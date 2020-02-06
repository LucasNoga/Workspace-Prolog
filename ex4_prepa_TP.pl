/*Exercice 4:
Ecrire sépare (Nombres, Positifs, Négatifs) qui range les éléments d’une liste Nombres dans deux autres listes selon qu’ils sont positifs (ou nuls) ou négatifs. Par exemple :
%sépare([3,- 1,0,5,-2], [3,0,5], [-1, -2]).
Proposer une version avec le CUT

*/
separe([], [], []).
separe([X|L], P, [X|N]) :- X<0, separe(L, P, N).
separe([X|L], [X|P], N) :- X>=0, separe(L, P, N).


%sépare([3,- 1,0,5,-2], [3,0,5], [-1, -2]).