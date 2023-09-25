dropEveryOther([],[]).
dropEveryOther([X],[X]).
dropEveryOther([X,_|L1],[X|L2]) :- dropEveryOther(L1,L2).
