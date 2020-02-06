/*Analyse de la grammaire : 

Axiome => 0
Axiome => 0 X Alternative

Alternative => 1
Alternative => 1 X Axiome

X => 0
X => 1
*/

lireMot(L) :- lireAxiome(L, []).

lireAxiome([0|L], L).
lireAxiome([0|S], F) :- lire_x(S, R), lireAlternative(R, F). 

lireAlternative([1|L], L).
lireAlternative([1|S], F) :- lireX(S, R), lireAxiome(R, F).

lireX([0|L], L).
lireX([1|L], L).

/*Pour compter le nombre de 0 et de 1*/
lireMotCompte(L, Zero, Un) :- lireAxiomeCompte(L, [], Zero, Un).

lireAxiomeCompte([0|L], L, 0, 0).
lireAxiomeCompte([0|S], F, Zero+1, Un) :- lireXCompte(S, R, 0, 0), lireAlternativeCompte(R, F, Zero, Un). 

lireAlternativeCompte([1|L], L).
lireAlternativeCompte([1|S], F, Zero, Un+1) :- lireXCompte(S, R, 0, 0), lireAxiomeCompte(R, F, Zero, Un).

lireXCompte([0|L], L, 0, 0).
lireXCompte([1|L], L, 0, 0).

test :-
	lireMotCompte([0, 0, 1, 0, 0], Zero, Un).
	write(Zero), write(Un), nl

/*
lireMot([0, 0, 1, 0, 0]).
true

lireMot([0, 1, 0, 1, 0]).
fail

lireMotCompte([0, 0, 1, 0, 0]).
true

lireMotCompte([0, 1, 0, 1, 0]).
fail

*/