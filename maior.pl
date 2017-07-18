maior([X | [] ], X).
maior([X1 | [X2 | L]], S):- X1 >= X2, maior([X1 | L], S).
maior([X1 | [X2 | L]], S):- X1 < X2, maior([X2 | L], S).

