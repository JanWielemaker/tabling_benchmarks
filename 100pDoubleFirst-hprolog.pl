:- ['tabling.pl'].

a(X,Y) :-
  start_tabling(a(X,Y),p_aux(X,Y)).

p_aux(X,Y) :-
  a(X,Z),  a(Z,Y).
p_aux(X,Y) :- e(X,Y).

go :-
  cputime(Start),
  a(_X,_Y),
  cputime(End),
  T is End-Start,
  write('% 100vertices-hprolog.pl: execution time ='), write(T), write(' milliseconds'),nl.

% See print_answers_for_xsb_comparison/0 in testlib2.pl
variant_for_xsb_comparison(a(_,_)).

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
e(48,49).
e(49,50).
e(50,51).
e(51,52).
e(52,53).
e(53,54).
e(54,55).
e(55,56).
e(56,57).
e(57,58).
e(58,59).
e(59,60).
e(60,61).
e(61,62).
e(62,63).
e(63,64).
e(64,65).
e(65,66).
e(66,67).
e(67,68).
e(68,69).
e(69,70).
e(70,71).
e(71,72).
e(72,73).
e(73,74).
e(74,75).
e(75,76).
e(76,77).
e(77,78).
e(78,79).
e(79,80).
e(80,81).
e(81,82).
e(82,83).
e(83,84).
e(84,85).
e(85,86).
e(86,87).
e(87,88).
e(88,89).
e(89,90).
e(90,91).
e(91,92).
e(92,93).
e(93,94).
e(94,95).
e(95,96).
e(96,97).
e(97,98).
e(98,99).
