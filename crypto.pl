:- use_module(library(clpfd)).

solve(T, W, O, F, U, R) :-
  L = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
  member(O, L),
  member(R, L),
  member(W, L),
  member(U, L),
  member(T, L),
  member(F, L),
  R is (O + O) rem 10, % remainder
  C1 is (O + O) div 10, % integer division
  U is (W + W + C1) rem 10,
  C2 is (W + W + C1) div 10,
  O is (T + T + C2) rem 10,
  F is (T + T + C2) div 10,
  all_different([T, W, O, F, U, R]).

oldest(J, G, P, M, S) :-
  L = [1, 2, 3, 4, 5],
  member(J,  L),
  member(G,  L),
  member(P,  L),
  member(M,  L),
  member(S,  L),
  J > G,
  J > P,
  M < S,
  M < P,
  M > G,
  J < S.

eightTowers(X1, X2, X3, X4, X5, X6, X7, X8) :-
  L = [1, 2, 3, 4, 5, 6, 7, 8],
  member(X1, L),
  member(X2, L),
  member(X3, L),
  member(X4, L),
  member(X5, L),
  member(X6, L),
  member(X7, L),
  member(X8, L),
  all_different([X1, X2, X3, X4, X5, X6, X7, X8]).