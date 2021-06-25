%square

square(X, Y) :- Y is X * X.

listOfSquares([], []).
listOfSquares([X|XS], [Y|YS]) :- Y is X * X, listOfSquares(XS, YS).

sumFirst(0, 0).
sumFirst(X, Y) :- X > 0, Z is X - 1, sumFirst(Z, W), Y is X + W.

xLength([], 0).
xLength([_|XS], Y) :- xLength(XS, W), Y is W + 1.

nLength([], 0).
nLength([X|XS], L) :- is_list(X), nLength(X, W), nLength(XS, Z), L is Z + W.
nLength([_|XS], L) :- nLength(XS, W), L is W + 1.

dotProduct([U], [V], W) :- W is U * V.
dotProduct([U|US], [V|VS], W) :- dotProduct(US, VS, Z), W is Z + U * V, !.
