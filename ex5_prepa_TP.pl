palindrome(L) :- renverse(L, [], L2) , compare(L,L2).

compare([], []).
compare([X|L], [X|D]) :- compare(L, D).
/*compare([X|L], [Y|D]) :- pas bon*/ 

renverse([], L, L).
renverse([X|L], T, R) :- renverse(L, [X|T], R).

/* e.g. palindrome([m,a,d,a,m, i,m, a,d,a,m]).*/