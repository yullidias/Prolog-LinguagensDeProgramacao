linearizar([X | []], X).
linearizar([X1 | [X2 | L1]], L2):- concatenar(X1,X2,X3), linearizar([X3 | L1], L2).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]):- concatenar(L1, L2, L3).
