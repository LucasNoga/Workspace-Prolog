/*PREDICATS*/
pere(jules, richard).
pere(jules, yves).
pere(jules, pierre).
pere(yves, sophie).

mere(jeanne, sophie).

femme(jeanne).
femme(sophie).
femme(marie).

homme(jules).
homme(pierre).
homme(yves).
homme(richard).

/*CLAUSES*/
/* X est un parent de Y, pere ou mere */
parent(X, Y) :- mere(X, Y).
parent(X, Y) :- pere(X, Y).

/* X est le fils de Y */
fils(X, Y) :- mere(Y, X), homme(X).
fils(X, Y) :- pere(Y, X), homme(X).

/* X est la fille de Y */
fille(X, Y) :- mere(Y, X), femme(X).
fille(X, Y) :- pere(Y, X), femme(X).

/* X est le grand-pere de Y */
grand-pere(X, Y) :- parent(P, Y), pere(X, P).

/* X est la grand-mere de Y */
grand-mere(X, Y) :- parent(P, Y), mere(X, P).

/* X est le frere de Y */
frere(X,Y) :- homme(X), pere(P,X), pere(P,Y), mere(M,X), mere(M,Y), X \== Y.

/* X est la soeur de Y */
soeur(X,Y) :- femme(X), pere(P,X), pere(P,Y), mere(M,X), mere(M,Y), X \== Y.


/* Traduction d'enonces
aime(marie,vin).
aime(pierre,X) :- aime(X,vin).
vole(X,Y) :- voleur(X), aime(X,Y).
voleur(pierre).
vole(X,Y) donne X=pierre et Y=marie */