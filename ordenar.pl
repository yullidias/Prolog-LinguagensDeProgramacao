ordenar([],[]).
ordenar(L1, [X2 | L2]):- menor(L1, X2), remover(X2, L1, L3), ordenar(L3, L2).

remover(X, [X | L], L).  
remover(X, [Y | L], [Y | T]):- X \== Y, remover(X,L,T). 

menor([X | [] ], X).
menor([X1 | [X2 | L]], S):- X1 >= X2 , menor([X2 | L], S1), S is S1.
menor([X1 | [X2 | L]], S):- X1 < X2, menor([X1 | L], S1), S is S1.
