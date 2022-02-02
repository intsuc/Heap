#> heap:executor/profile/
#
# @within
#   minecraft:load
#   heap:executor/profile/

#>
# @internal
#declare storage heap.executor:

#>
# @private
  #declare score_holder heap:average_tick_time
  #declare score_holder heap:average_tick_time_old
  #declare score_holder heap:credit

execute store result score heap:average_tick_time_old heap run data get storage heap.executor: average_tick_time 0.8

execute store result storage heap.executor: average_tick_time int 1.0 run debug stop
debug start

execute store result score heap:average_tick_time heap run data get storage heap.executor: average_tick_time 0.2

execute store result storage heap.executor: average_tick_time int 1.0 run scoreboard players operation heap:average_tick_time heap += heap:average_tick_time_old heap

execute store result score heap:credit heap run data get storage heap.executor: credit 1.0
execute if score heap:average_tick_time heap matches 35.. store result storage heap.executor: credit int 1.0 run scoreboard players add heap:credit heap 1
execute if score heap:average_tick_time heap matches ..34 store result storage heap.executor: credit int 1.0 run scoreboard players remove heap:credit heap 1

scoreboard players reset heap:average_tick_time heap
scoreboard players reset heap:average_tick_time_old heap
scoreboard players reset heap:credit heap

schedule function heap:executor/profile/ 2t
