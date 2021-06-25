-module(lecture13).
-export([area/0, listen/0]).
area() ->
    receive
        {rectangle, H, W} -> io:format("Area of rectangle:~p~n", [H*W]),
        area();
        {circle, R} -> io:format("Area of circle:~p~n", [R*R*3.1416]),
        area();
        finish ->  ok;
        hola -> io:format("Got this message: hola ~n",[]),
        area();
        X -> io:format("Got this message: ~w ~n",[X]),
            X ! recibido,
        area()
    end.

listen() ->
    receive
        recibido -> ok;
        M -> io:format("Got  this message: ~w ~n", [M]),
        M ! hola,
        listen()
    end.
