:- ['tabling.pl'].

go :-
  cputime(Start),
  q(_),
  cputime(End),
  T is End-Start,
  print_time(T).

variant_for_xsb_comparison(q(_)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% File:     test_large_joins_join2.pl
%% Small version produced by Benoit Desouter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% :- table r/5.
% tabled_predicate(r/5).

r(A,B,C,D,E) :- start_tabling(r(A,B,C,D,E),r_aux(A,B,C,D,E)).

p(abcd0).
p(abcd1).
p(abcd2).
p(abcd3).
p(abcd4).
p(abcd5).
p(abcd6).
p(abcd7).
p(abcd8).
p(abcd9).
p(abcd10).
p(abcd11).
p(abcd12).
% p(abcd13).
% p(abcd14).
% p(abcd15).
% p(abcd16).
% p(abcd17).
% p(abcd18).

ra(A,B,C,D,E):- p(A), p(B), p(C), p(D), p(E).

rb(A,B,C,D,E):- p(A), p(B), p(C), p(D), p(E).

r_aux(A,B,C,D,E):- ra(A,B,C,D,E), rb(A,B,C,D,E).

q(A):- r(A,_B,_C,_D,_E).
q(B):- r(_A,B,_C,_D,_E).
q(C):- r(_A,_B,C,_D,_E).
q(D):- r(_A,_B,_C,D,_E).
q(E):- r(_A,_B,_C,_D,E).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
