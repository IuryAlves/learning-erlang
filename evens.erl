-module(evens).
-export([evens/1]).


is_even(X) ->
  X rem 2 == 0.

evens(List) ->
  lists:filter(fun is_even/1, List).
