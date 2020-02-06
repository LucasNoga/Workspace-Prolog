/*
Intro Prolog
1 - déclarer des faits
2 - énoncer des egles de raisonnementsse basant sur ces faits
3 - poser des questions
*/

/* Famille Ingalls : Charles -> Mary, Laura, Carrie */

ingalls(landsford).
ingalls(peter).
ingalls(alice).
ingalls(altha).
ingalls(ella).
ingalls(earl).
ingalls(charles).
ingalls(mary).
ingalls(adam).
ingalls(laura).
ingalls(rose).
ingalls(carrie).

ingalls_masculin(landsford).
ingalls_masculin(peter).
ingalls_masculin(earl).
ingalls_masculin(charles).
ingalls_masculin(adam).

ingalls_feminin(alice).
ingalls_feminin(altha).
ingalls_feminin(ella).
ingalls_feminin(mary).
ingalls_feminin(laura).
ingalls_feminin(rose).
ingalls_feminin(carrie).

ingalls_parent(landsford, peter).
ingalls_parent(peter, alice).
ingalls_parent(alice, altha).
ingalls_parent(peter, ella).
ingalls_parent(ella, earl).
ingalls_parent(landsford, charles).
ingalls_parent(charles, mary).
ingalls_parent(mary, adam).
ingalls_parent(charles, laura).
ingalls_parent(laura, rose).
ingalls_parent(charles, carrie).

ingalls_fils(P, F) :- ingalls_parent(P), ingalls_masculin(F).

ingalls_fille(P, F) :- ingalls_parent(P), ingalls_feminin(F).

ingalls_grandparent(X, Y) :- ingalls_parent(X, I), ingalls_parent(I, Y).

lien_immediat(X, Y) :- ingalls_parent(X, Y)
lien_immediat(X, Y) :- ingalls_parent(Y, X)

ingalls_ancetre(X, Y) :- ingalls_parent(X, Y)
ingalls_ancetre(X, Y) :- ingalls_parent(X, I), ingalls_ancetre(I, Y).
