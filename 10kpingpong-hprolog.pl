:- ['tabling.pl'].

go :-
  cputime(Start),
  d(_X),
  cputime(End),
  T is End-Start,
  print_time(T).

variant_for_xsb_comparison(d(_)).
variant_for_xsb_comparison(e(_)).

% Two mutually recursive predicates:
% d(X) :- e(Y), Y < 5, X is Y + 1.
% d(0).
%
% e(X) :- d(Y), Y < 5, X is Y + 1.
% e(0).

d(X) :-
  start_tabling(d(X),d_aux(X)).

e(X) :-
  start_tabling(e(X),e_aux(X)).

d_aux(X) :- e(Y), Y < 10000, X is Y + 1.
d_aux(0).

e_aux(X) :- d(Y), Y < 10000, X is Y + 1.
e_aux(0).
