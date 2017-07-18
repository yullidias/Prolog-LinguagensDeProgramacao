compactar([],[]).
compactar(L1, L2):- deslinearizar(L1,L3), contarmembros(L3, L2).

contarmembros([],[]).
contarmembros([ [X | L] | L1], [ [C , X] |  L2]):- contar([X | L], C), contarmembros(L1, L2).

contar([], 0).
contar([_ | L], T):- contar(L, T1), T is 1 + T1.

deslinearizar([X | []],[ [X | []] | [] ]).
deslinearizar([X,Y | L],[ [X | L1] | L2]):- Y==X, deslinearizar([Y | L], [ L1 | L2 ]).
deslinearizar([X,Y | L],[ [X | []] |  L2 ]):- Y \== X, deslinearizar( [Y | L], L2 ).
