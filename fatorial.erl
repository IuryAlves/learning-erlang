-module(fatorial).
-export([fat/1]).

fat(1) ->
	1;

fat(X) ->
	X * fat(X - 1).