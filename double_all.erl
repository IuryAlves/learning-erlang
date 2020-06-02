-module(double_all).
-export([doubleAll/1]).

double(X) ->
  X * 2.

doubleAll(List) ->
    lists:map(fun double/1, List).
