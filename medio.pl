medio([], 0).
medio(X, M):- soma(X, S), contar(X, T), M is S / T.

soma([], 0).
soma([X | L], S):- soma(L, S1), S is X + S1.

contar([], 0).
contar([_ | L], T):- contar(L, T1), T is 1 + T1.
