sum([], 0) :- !.
sum([T|Q], Somme) :- sum(Q, S), Somme is T + S.
 
writeSum :-
  sum([1,2,3,4,5,6], S),
  write(S), nl.
