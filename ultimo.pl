ultimo([X], X).
ultimo([Y | L1], X) :- ultimo(L1, X).