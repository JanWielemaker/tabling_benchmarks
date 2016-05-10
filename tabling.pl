:- use_module(procps).
:- use_module('../tabling_library/tabling').

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
	format(' ~`.t ~D KBytes RSS~70|~n', [RSS]).

term_expansion((go:-Body), (go:-(rss(RSS0),Body,print_rss(RSS0)))).



print_time(T) :-
	source_file(go, File),
	file_base_name(File, Base),
	format('~w ~`.t ~D msec~45|', [Base, T]).

verbose(T) :-
	getenv('VERBOSE', y), !,
	write(T).
verbose(_).

verboseln(T) :-
	getenv('VERBOSE', y), !,
	writeln(T).
verboseln(_).
