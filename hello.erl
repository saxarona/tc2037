-module(hello).
-export([start/0, timesTwo/1, factorial/1, reverse/1]).

start() ->
    io:format("Hello.~n").

timesTwo(X) -> 2 * X.


factorial(0) -> 1 ;
factorial(N) when N > 0, is_number(N) -> N * factorial(N - 1) ;
factorial(_) -> undefined.

reverse([]) -> [] ;
reverse([X|XS]) -> reverse(XS) ++ [X].

