/*Ajoute un element dans une liste si il n'existe pas déja dans la liste*/
Ajoute(X, L1, l2).
Ajoute(X, [], [X])
Ajoute(X, [X|L], [X|L]) :- !
Ajoute(X, [Y|L], [Y|L]) :- Ajoute(X, L, L1).