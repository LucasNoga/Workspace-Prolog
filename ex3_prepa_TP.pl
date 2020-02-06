%Clauses
incremente([], []).
%incremente([X|L], [Y|R]) :- (number(X) -> Y is X+1), incremente(L, R).
incremente([X|L], [Y|R]) :-  Y is X+1, incremente(L, R).

%Main
%incremente([1,2,1], R).
