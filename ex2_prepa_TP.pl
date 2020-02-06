%Clauses
compte(_, [], 0) :- !.
compte(X, [X|L], N) :- compte(X, L, N1), N is N1+1 .
compte(X, [Y|L], N) :- X\==Y, compte(X, L, N).

%Main
compte(a,[b,a,a],3).