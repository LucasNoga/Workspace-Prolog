difference([], _, []).
difference([X|L1], L2, L) :- membre(X, L2), !, difference(L1, L2). 
difference([X|L1], L2, [X|L]) :- difference(L1, L2, L).