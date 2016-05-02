:- use_module('../tabling_library/tabling').

cputime(T) :-
	statistics(runtime, [T,_]).

print_time(T) :-
	source_file(go, File),
	file_base_name(File, Base),
	format('~w~`.t ~D milliseconds~50|~n', [Base, T]).
