:- ['tabling.pl'].

:- table a/2.

a(X,Y) :- a(X,Z),  a(Z,Y).
a(X,Y) :- e(X,Y).

:- dynamic e/2.

go :-
  go(200).

go(N) :-
  abolish_all_tables,
  retractall(e(_,_)),
  Max is N - 2,
  forall(between(0,Max,I1),
	 (   I2 is I1+1,
	     assertz(e(I1,I2)))),
  cputime(Start),
  a(_X,_Y),
  cputime(End),
  T is End-Start,
  print_time(T), !.				% det!
