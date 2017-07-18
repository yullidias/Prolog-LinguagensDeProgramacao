rotacionarn(0, L, L).
rotacionarn(N, L1, L3):- M is N-1, rotacionar(L1, L2), rotacionarn(M, L2, L3).

rotacionar([],[]).
rotacionar([X | L1], L2):- inserirfim(X, L1, L2).

inserirfim(X, [], [X]).
inserirfim(X, [Y | L1], [Y | L2]) :- inserirfim(X, L1, L2).
