membre(N, L) :-
     membre(N, [N|L] ) :- !.
     membre(N, [M|L] ) :- membre(N, L).