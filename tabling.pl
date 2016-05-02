:- use_module('../tabling_library/tabling').

cputime(T) :-
	statistics(runtime, [T,_]).

print_time(T) :-
	source_file(go, File),
	file_base_name(File, Base),
	format('~w~`.t ~D milliseconds~50|~n', [Base, T]).

verbose(T) :-
	getenv('VERBOSE', y), !,
	write(T).
verbose(_).

verboseln(T) :-
	getenv('VERBOSE', y), !,
	writeln(T).
verboseln(_).
