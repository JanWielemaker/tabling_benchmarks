:- use_module(procps).

:- dynamic
	base/3.

cputime(T) :-
	statistics(runtime, [T,_]).

rss(Bytes) :-
	garbage_collect,
	garbage_collect_atoms,
	procps_stat(Stat),
	Bytes = Stat.rss.

print_rss(RSS0) :-
	rss(RSS1),
	RSS is round((RSS1-RSS0)/1024),
	(   getenv('CSV', yes)
	->  format(',~d~n', [RSS])
	;   getenv('CSV', CSVFile)
	->  setup_call_cleanup(
		open(CSVFile, append, Out),
		format(Out, ',~d~n', [RSS]),
		close(Out)),
	    human_rss(RSS)
	;   human_rss(RSS)
	).

human_rss(RSS) :-
	base(_, _, RSS0),
	Rel is 100*(RSS/RSS0),
	format(' ~`.t ~DKb RSS~70|~t(~0f%~6+)~n', [RSS, Rel]).
human_rss(RSS) :-
	format(' ~`.t ~DKb RSS~70|~n', [RSS]).

term_expansion((go:-Body), (go:-(rss(RSS0),Body,print_rss(RSS0)))).

print_time(T) :-
	current_test(Test),
	(   getenv('CSV', yes)
	->  format('~w,~d', [Test, T])
	;   getenv('CSV', CSVFile)
	->  setup_call_cleanup(
		open(CSVFile, append, Out),
		format(Out, '~w,~d', [Test, T]),
		close(Out)),
	    human_time(Test, T)
	;   human_time(Test, T)
	).

current_test(Test) :-
	source_file(go, File),
	file_base_name(File, Base),
	atom_concat(Test, '-hprolog.pl', Base).

human_time(Test, T) :-
	base_performance(Test, TB, RSS),
	assertz(base(Test, TB, RSS)),
	!,
	Rel is 100*(T/TB),
	format('~w ~`.t ~D msec~45|~t(~0f%~6+)', [Test, T, Rel]).
human_time(Test, T) :-
	format('~w ~`.t ~D msec~45|', [Test, T]).

base_performance(Test, T, RSS) :-
	getenv('BASE', CSVFile),
	base_performance(CSVFile, Test, T, RSS).

base_performance(CSVFile, Test, T, RSS) :-
	csv_read_file(CSVFile, Rows),
	member(row(Test, T, RSS), Rows),
	!.

verbose(T) :-
	getenv('VERBOSE', y), !,
	write(T).
verbose(_).

verboseln(T) :-
	getenv('VERBOSE', y), !,
	writeln(T).
verboseln(_).
