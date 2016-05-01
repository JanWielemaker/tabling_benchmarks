:- ['tabling.pl','testlib.pl','table_print.pl'].
:- use_module(library(format)).

go :- 
  cputime(Start),
  path(_X,_Y),
  cputime(End),
  T is End-Start,
  write('% rocha7-hprolog.pl: execution time ='), write(T), write(' milliseconds'),nl.

variant_for_xsb_comparison(path(_,_)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% File:     test_path_right_last.pl
%% Added by: Miguel Areias and Ricardo Rocha
%% Program:  Right recursive path definition 
%%           with the recursive clause last
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% time_query:- path(X,Y),
%              fail.
% 
% debug_query:- path(X,Y),
%               query_output([X, ' - ', Y, '\n']),
%               fail.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% :- table path/2.
% tabled_predicate(path/2).

path(X,Y) :- start_tabling(path(X,Y),path_aux(X,Y)).

path_aux(X,Z):- edge(X,Z).
path_aux(X,Z):- edge(X,Y), path(Y,Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Program:  Pyramid configuration with depth 500
%% Constructed by Benoit Desouter
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edge(1,2).
edge(1,3).
edge(2,4).
edge(3,4).
edge(3,5).
edge(4,6).
edge(5,6).
edge(5,7).
edge(6,8).
edge(7,8).
edge(7,9).
edge(8,10).
edge(9,10).
edge(9,11).
edge(10,12).
edge(11,12).
edge(11,13).
edge(12,14).
edge(13,14).
edge(13,15).
edge(14,16).
edge(15,16).
edge(15,17).
edge(16,18).
edge(17,18).
edge(17,19).
edge(18,20).
edge(19,20).
edge(19,21).
edge(20,22).
edge(21,22).
edge(21,23).
edge(22,24).
edge(23,24).
edge(23,25).
edge(24,26).
edge(25,26).
edge(25,27).
edge(26,28).
edge(27,28).
edge(27,29).
edge(28,30).
edge(29,30).
edge(29,31).
edge(30,32).
edge(31,32).
edge(31,33).
edge(32,34).
edge(33,34).
edge(33,35).
edge(34,36).
edge(35,36).
edge(35,37).
edge(36,38).
edge(37,38).
edge(37,39).
edge(38,40).
edge(39,40).
edge(39,41).
edge(40,42).
edge(41,42).
edge(41,43).
edge(42,44).
edge(43,44).
edge(43,45).
edge(44,46).
edge(45,46).
edge(45,47).
edge(46,48).
edge(47,48).
edge(47,49).
edge(48,50).
edge(49,50).
edge(49,51).
edge(50,52).
edge(51,52).
edge(51,53).
edge(52,54).
edge(53,54).
edge(53,55).
edge(54,56).
edge(55,56).
edge(55,57).
edge(56,58).
edge(57,58).
edge(57,59).
edge(58,60).
edge(59,60).
edge(59,61).
edge(60,62).
edge(61,62).
edge(61,63).
edge(62,64).
edge(63,64).
edge(63,65).
edge(64,66).
edge(65,66).
edge(65,67).
edge(66,68).
edge(67,68).
edge(67,69).
edge(68,70).
edge(69,70).
edge(69,71).
edge(70,72).
edge(71,72).
edge(71,73).
edge(72,74).
edge(73,74).
edge(73,75).
edge(74,76).
edge(75,76).
edge(75,77).
edge(76,78).
edge(77,78).
edge(77,79).
edge(78,80).
edge(79,80).
edge(79,81).
edge(80,82).
edge(81,82).
edge(81,83).
edge(82,84).
edge(83,84).
edge(83,85).
edge(84,86).
edge(85,86).
edge(85,87).
edge(86,88).
edge(87,88).
edge(87,89).
edge(88,90).
edge(89,90).
edge(89,91).
edge(90,92).
edge(91,92).
edge(91,93).
edge(92,94).
edge(93,94).
edge(93,95).
edge(94,96).
edge(95,96).
edge(95,97).
edge(96,98).
edge(97,98).
edge(97,99).
edge(98,100).
edge(99,100).
edge(99,101).
edge(100,102).
edge(101,102).
edge(101,103).
edge(102,104).
edge(103,104).
edge(103,105).
edge(104,106).
edge(105,106).
edge(105,107).
edge(106,108).
edge(107,108).
edge(107,109).
edge(108,110).
edge(109,110).
edge(109,111).
edge(110,112).
edge(111,112).
edge(111,113).
edge(112,114).
edge(113,114).
edge(113,115).
edge(114,116).
edge(115,116).
edge(115,117).
edge(116,118).
edge(117,118).
edge(117,119).
edge(118,120).
edge(119,120).
edge(119,121).
edge(120,122).
edge(121,122).
edge(121,123).
edge(122,124).
edge(123,124).
edge(123,125).
edge(124,126).
edge(125,126).
edge(125,127).
edge(126,128).
edge(127,128).
edge(127,129).
edge(128,130).
edge(129,130).
edge(129,131).
edge(130,132).
edge(131,132).
edge(131,133).
edge(132,134).
edge(133,134).
edge(133,135).
edge(134,136).
edge(135,136).
edge(135,137).
edge(136,138).
edge(137,138).
edge(137,139).
edge(138,140).
edge(139,140).
edge(139,141).
edge(140,142).
edge(141,142).
edge(141,143).
edge(142,144).
edge(143,144).
edge(143,145).
edge(144,146).
edge(145,146).
edge(145,147).
edge(146,148).
edge(147,148).
edge(147,149).
edge(148,150).
edge(149,150).
edge(149,151).
edge(150,152).
edge(151,152).
edge(151,153).
edge(152,154).
edge(153,154).
edge(153,155).
edge(154,156).
edge(155,156).
edge(155,157).
edge(156,158).
edge(157,158).
edge(157,159).
edge(158,160).
edge(159,160).
edge(159,161).
edge(160,162).
edge(161,162).
edge(161,163).
edge(162,164).
edge(163,164).
edge(163,165).
edge(164,166).
edge(165,166).
edge(165,167).
edge(166,168).
edge(167,168).
edge(167,169).
edge(168,170).
edge(169,170).
edge(169,171).
edge(170,172).
edge(171,172).
edge(171,173).
edge(172,174).
edge(173,174).
edge(173,175).
edge(174,176).
edge(175,176).
edge(175,177).
edge(176,178).
edge(177,178).
edge(177,179).
edge(178,180).
edge(179,180).
edge(179,181).
edge(180,182).
edge(181,182).
edge(181,183).
edge(182,184).
edge(183,184).
edge(183,185).
edge(184,186).
edge(185,186).
edge(185,187).
edge(186,188).
edge(187,188).
edge(187,189).
edge(188,190).
edge(189,190).
edge(189,191).
edge(190,192).
edge(191,192).
edge(191,193).
edge(192,194).
edge(193,194).
edge(193,195).
edge(194,196).
edge(195,196).
edge(195,197).
edge(196,198).
edge(197,198).
edge(197,199).
edge(198,200).
edge(199,200).
edge(199,201).
edge(200,202).
edge(201,202).
edge(201,203).
edge(202,204).
edge(203,204).
edge(203,205).
edge(204,206).
edge(205,206).
edge(205,207).
edge(206,208).
edge(207,208).
edge(207,209).
edge(208,210).
edge(209,210).
edge(209,211).
edge(210,212).
edge(211,212).
edge(211,213).
edge(212,214).
edge(213,214).
edge(213,215).
edge(214,216).
edge(215,216).
edge(215,217).
edge(216,218).
edge(217,218).
edge(217,219).
edge(218,220).
edge(219,220).
edge(219,221).
edge(220,222).
edge(221,222).
edge(221,223).
edge(222,224).
edge(223,224).
edge(223,225).
edge(224,226).
edge(225,226).
edge(225,227).
edge(226,228).
edge(227,228).
edge(227,229).
edge(228,230).
edge(229,230).
edge(229,231).
edge(230,232).
edge(231,232).
edge(231,233).
edge(232,234).
edge(233,234).
edge(233,235).
edge(234,236).
edge(235,236).
edge(235,237).
edge(236,238).
edge(237,238).
edge(237,239).
edge(238,240).
edge(239,240).
edge(239,241).
edge(240,242).
edge(241,242).
edge(241,243).
edge(242,244).
edge(243,244).
edge(243,245).
edge(244,246).
edge(245,246).
edge(245,247).
edge(246,248).
edge(247,248).
edge(247,249).
edge(248,250).
edge(249,250).
edge(249,251).
edge(250,252).
edge(251,252).
edge(251,253).
edge(252,254).
edge(253,254).
edge(253,255).
edge(254,256).
edge(255,256).
edge(255,257).
edge(256,258).
edge(257,258).
edge(257,259).
edge(258,260).
edge(259,260).
edge(259,261).
edge(260,262).
edge(261,262).
edge(261,263).
edge(262,264).
edge(263,264).
edge(263,265).
edge(264,266).
edge(265,266).
edge(265,267).
edge(266,268).
edge(267,268).
edge(267,269).
edge(268,270).
edge(269,270).
edge(269,271).
edge(270,272).
edge(271,272).
edge(271,273).
edge(272,274).
edge(273,274).
edge(273,275).
edge(274,276).
edge(275,276).
edge(275,277).
edge(276,278).
edge(277,278).
edge(277,279).
edge(278,280).
edge(279,280).
edge(279,281).
edge(280,282).
edge(281,282).
edge(281,283).
edge(282,284).
edge(283,284).
edge(283,285).
edge(284,286).
edge(285,286).
edge(285,287).
edge(286,288).
edge(287,288).
edge(287,289).
edge(288,290).
edge(289,290).
edge(289,291).
edge(290,292).
edge(291,292).
edge(291,293).
edge(292,294).
edge(293,294).
edge(293,295).
edge(294,296).
edge(295,296).
edge(295,297).
edge(296,298).
edge(297,298).
edge(297,299).
edge(298,300).
edge(299,300).
edge(299,301).
edge(300,302).
edge(301,302).
edge(301,303).
edge(302,304).
edge(303,304).
edge(303,305).
edge(304,306).
edge(305,306).
edge(305,307).
edge(306,308).
edge(307,308).
edge(307,309).
edge(308,310).
edge(309,310).
edge(309,311).
edge(310,312).
edge(311,312).
edge(311,313).
edge(312,314).
edge(313,314).
edge(313,315).
edge(314,316).
edge(315,316).
edge(315,317).
edge(316,318).
edge(317,318).
edge(317,319).
edge(318,320).
edge(319,320).
edge(319,321).
edge(320,322).
edge(321,322).
edge(321,323).
edge(322,324).
edge(323,324).
edge(323,325).
edge(324,326).
edge(325,326).
edge(325,327).
edge(326,328).
edge(327,328).
edge(327,329).
edge(328,330).
edge(329,330).
edge(329,331).
edge(330,332).
edge(331,332).
edge(331,333).
edge(332,334).
edge(333,334).
edge(333,335).
edge(334,336).
edge(335,336).
edge(335,337).
edge(336,338).
edge(337,338).
edge(337,339).
edge(338,340).
edge(339,340).
edge(339,341).
edge(340,342).
edge(341,342).
edge(341,343).
edge(342,344).
edge(343,344).
edge(343,345).
edge(344,346).
edge(345,346).
edge(345,347).
edge(346,348).
edge(347,348).
edge(347,349).
edge(348,350).
edge(349,350).
edge(349,351).
edge(350,352).
edge(351,352).
edge(351,353).
edge(352,354).
edge(353,354).
edge(353,355).
edge(354,356).
edge(355,356).
edge(355,357).
edge(356,358).
edge(357,358).
edge(357,359).
edge(358,360).
edge(359,360).
edge(359,361).
edge(360,362).
edge(361,362).
edge(361,363).
edge(362,364).
edge(363,364).
edge(363,365).
edge(364,366).
edge(365,366).
edge(365,367).
edge(366,368).
edge(367,368).
edge(367,369).
edge(368,370).
edge(369,370).
edge(369,371).
edge(370,372).
edge(371,372).
edge(371,373).
edge(372,374).
edge(373,374).
edge(373,375).
edge(374,376).
edge(375,376).
edge(375,377).
edge(376,378).
edge(377,378).
edge(377,379).
edge(378,380).
edge(379,380).
edge(379,381).
edge(380,382).
edge(381,382).
edge(381,383).
edge(382,384).
edge(383,384).
edge(383,385).
edge(384,386).
edge(385,386).
edge(385,387).
edge(386,388).
edge(387,388).
edge(387,389).
edge(388,390).
edge(389,390).
edge(389,391).
edge(390,392).
edge(391,392).
edge(391,393).
edge(392,394).
edge(393,394).
edge(393,395).
edge(394,396).
edge(395,396).
edge(395,397).
edge(396,398).
edge(397,398).
edge(397,399).
edge(398,400).
edge(399,400).
edge(399,401).
edge(400,402).
edge(401,402).
edge(401,403).
edge(402,404).
edge(403,404).
edge(403,405).
edge(404,406).
edge(405,406).
edge(405,407).
edge(406,408).
edge(407,408).
edge(407,409).
edge(408,410).
edge(409,410).
edge(409,411).
edge(410,412).
edge(411,412).
edge(411,413).
edge(412,414).
edge(413,414).
edge(413,415).
edge(414,416).
edge(415,416).
edge(415,417).
edge(416,418).
edge(417,418).
edge(417,419).
edge(418,420).
edge(419,420).
edge(419,421).
edge(420,422).
edge(421,422).
edge(421,423).
edge(422,424).
edge(423,424).
edge(423,425).
edge(424,426).
edge(425,426).
edge(425,427).
edge(426,428).
edge(427,428).
edge(427,429).
edge(428,430).
edge(429,430).
edge(429,431).
edge(430,432).
edge(431,432).
edge(431,433).
edge(432,434).
edge(433,434).
edge(433,435).
edge(434,436).
edge(435,436).
edge(435,437).
edge(436,438).
edge(437,438).
edge(437,439).
edge(438,440).
edge(439,440).
edge(439,441).
edge(440,442).
edge(441,442).
edge(441,443).
edge(442,444).
edge(443,444).
edge(443,445).
edge(444,446).
edge(445,446).
edge(445,447).
edge(446,448).
edge(447,448).
edge(447,449).
edge(448,450).
edge(449,450).
edge(449,451).
edge(450,452).
edge(451,452).
edge(451,453).
edge(452,454).
edge(453,454).
edge(453,455).
edge(454,456).
edge(455,456).
edge(455,457).
edge(456,458).
edge(457,458).
edge(457,459).
edge(458,460).
edge(459,460).
edge(459,461).
edge(460,462).
edge(461,462).
edge(461,463).
edge(462,464).
edge(463,464).
edge(463,465).
edge(464,466).
edge(465,466).
edge(465,467).
edge(466,468).
edge(467,468).
edge(467,469).
edge(468,470).
edge(469,470).
edge(469,471).
edge(470,472).
edge(471,472).
edge(471,473).
edge(472,474).
edge(473,474).
edge(473,475).
edge(474,476).
edge(475,476).
edge(475,477).
edge(476,478).
edge(477,478).
edge(477,479).
edge(478,480).
edge(479,480).
edge(479,481).
edge(480,482).
edge(481,482).
edge(481,483).
edge(482,484).
edge(483,484).
edge(483,485).
edge(484,486).
edge(485,486).
edge(485,487).
edge(486,488).
edge(487,488).
edge(487,489).
edge(488,490).
edge(489,490).
edge(489,491).
edge(490,492).
edge(491,492).
edge(491,493).
edge(492,494).
edge(493,494).
edge(493,495).
edge(494,496).
edge(495,496).
edge(495,497).
edge(496,498).
edge(497,498).
edge(497,499).
edge(498,500).
edge(499,500).
