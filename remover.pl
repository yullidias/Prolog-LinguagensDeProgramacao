remover(_, [], []).
remover(X,[X|L1],L2) :- remover(X,L1,L2).
remover(X,[Y|L1],[Y|L2]) :- X \== Y, remover(X,L1,L2).


