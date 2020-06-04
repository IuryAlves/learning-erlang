-module(rock_paper_scissors).
-export([play/2, tournament/2]).

beat(rock) ->
  paper;

beat(scissors) ->
  rock;

beat(paper) ->
  scissors;

beat(_) ->
  wrong_move.

result(A, A) ->
  {draw, A};

play(GestureA, GestureB) ->
  case beat(GestureA) == GestureB of
   true -> lose;
   false -> win
  end.


outcome(X, Acc) ->
   case X of
     lose -> Acc-1;
     win -> Acc+1;
     draw -> Acc
   end.


tournament(ListA, ListB) ->
  lists:foldl(fun outcome/2, 0, lists:zipwith(fun play/2, ListA, ListB)).

