:- table a/2.
:- import format/2 from format.

a(X,Y) :-
  a(X,Z),  a(Z,Y).
a(X,Y) :- e(X,Y).

go :-
  cputime(Start),
  a(X,Y),
  cputime(End),
  T is (End-Start) * 1000,
  write('% 50pDblFstLoop-xsb.pl: execution time ='), write(T), write(' milliseconds'),nl.

print_solutions :-
  a(X,Y),
  format('XSBsol a(~w,~w)~n',[X,Y]),
  fail.

% Test facts
e(0,1).
e(1,2).
e(2,3).
e(3,4).
e(4,5).
e(5,6).
e(6,7).
e(7,8).
e(8,9).
e(9,10).
e(10,11).
e(11,12).
e(12,13).
e(13,14).
e(14,15).
e(15,16).
e(16,17).
e(17,18).
e(18,19).
e(19,20).
e(20,21).
e(21,22).
e(22,23).
e(23,24).
e(24,25).
e(25,26).
e(26,27).
e(27,28).
e(28,29).
e(29,30).
e(30,31).
e(31,32).
e(32,33).
e(33,34).
e(34,35).
e(35,36).
e(36,37).
e(37,38).
e(38,39).
e(39,40).
e(40,41).
e(41,42).
e(42,43).
e(43,44).
e(44,45).
e(45,46).
e(46,47).
e(47,48).
e(48,0).
