-module(atoms).
-export([convert/2]).

convert(N, inch) ->
 	N / 2.54;

convert(N, centimeter) ->
	N * 2.54.

	

