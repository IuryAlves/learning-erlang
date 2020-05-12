-module(trip_durations).
-export([tripDuration/2]).

tripDuration([], _, Acc) ->
  Acc;

tripDuration(Durations, TotalHours, Acc) ->
    [Head|Tail] = Durations,
    case Head =< TotalHours of
      true -> tripDuration(Durations, TotalHours - Head, Acc+1);
      false -> tripDuration(Tail, TotalHours, Acc)
    end.

tripDuration(Durations, TotalHours) ->
  SortedDurations = lists:reverse(lists:sort(Durations)),
  tripDuration(SortedDurations, TotalHours, 0).

