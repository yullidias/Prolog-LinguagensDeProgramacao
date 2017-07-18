adjacente(X, Y, [X, Y | L]).
adjacente(X, Y, [Z | L]) :- X \== Z, adjacente(X, Y, L).
