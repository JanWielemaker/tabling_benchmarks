:- use_module(procps).

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
	;   format(' ~`.t ~D KBytes RSS~70|~n', [RSS])
	).

term_expansion((go:-Body), (go:-(rss(RSS0),Body,print_rss(RSS0)))).



print_time(T) :-
	source_file(go, File),
	file_base_name(File, Base),
	atom_concat(Test, '-hprolog.pl', Base),
	(   getenv('CSV', yes)
	->  format('~w,~d', [Base, T])
	;   format('~w ~`.t ~D msec~45|', [Test, T])
	).

verbose(T) :-
	getenv('VERBOSE', y), !,
	write(T).
verbose(_).

verboseln(T) :-
	getenv('VERBOSE', y), !,
	writeln(T).
verboseln(_).


hprolog_time(24,     '500fib-hprolog.pl').
hprolog_time(33,     '750fib-hprolog.pl').
hprolog_time(46,     '1000fib-hprolog.pl').
hprolog_time(982,    '10kfib-hprolog.pl').
hprolog_time(205,    '20krecognize-hprolog.pl').
hprolog_time(503,    '50krecognize-hprolog.pl').
hprolog_time(767,    '500naiveReverse-hprolog.pl').
hprolog_time(2800,   '1000naiveReverse-hprolog.pl').
hprolog_time(44,     '2000shuttle-hprolog.pl').
hprolog_time(138,    '5000shuttle-hprolog.pl').
hprolog_time(582,    '20000shuttle-hprolog.pl').
hprolog_time(1586,   '50000shuttle-hprolog.pl').
hprolog_time(271,    '10kpingpong-hprolog.pl').
hprolog_time(490,    '20kpingpong-hprolog.pl').
hprolog_time(653,    '50pDblFstLoop-hprolog.pl').
hprolog_time(4638,   '100pDblFstLoop-hprolog.pl').
hprolog_time(162,    '50pDoubleFirst-hprolog.pl').
hprolog_time(989,    '100pDoubleFirst-hprolog.pl').
hprolog_time(6785,   '200pDoubleFirst-hprolog.pl').
hprolog_time(110463, '500pDoubleFirst-hprolog.pl').
hprolog_time(1914,   'pyramid500-hprolog.pl').
hprolog_time(108662, 'bintree18-hprolog.pl').
hprolog_time(3001,   'testJoins-hprolog.pl').
hprolog_time(6444,   'mondial-hprolog.pl').
