gerar(X,X,[X]).
gerar(X,Y,[X|L1]) :- S is X+1, gerar(S,Y,L1). 
