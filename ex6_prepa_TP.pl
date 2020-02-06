/* On a [s,a,l,u,t], on doit pouvoir creer toutes les sous listes possibles*/
sousliste([],[]).
sousliste([X|L], [X|L2]) :- sousliste(L, L2).
sousliste([X|L], L2) :- sousliste(L, L2).

/*Exemple
sousliste([s,a,l,u,t], [a,l,u]). True
sousliste([s,a,l,u,t], [a,l,a]). False