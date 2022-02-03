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
  #declare score_holder heap:tick_time
  #declare score_holder heap:credit

execute store result score heap:tick_time heap store result storage heap.executor: tick_time int 1.0 run debug stop
debug start

execute store result score heap:credit heap run data get storage heap.executor: credit 1.0
execute if score heap:tick_time heap matches 39.. if data storage heap.executor: {credit_out: true} store result storage heap.executor: credit int 1.0 run scoreboard players add heap:credit heap 1
execute if score heap:tick_time heap matches ..38 if score heap:credit heap matches 1.. store result storage heap.executor: credit int 1.0 run scoreboard players remove heap:credit heap 1

scoreboard players reset heap:tick_time heap
scoreboard players reset heap:credit heap

schedule function heap:executor/profile/ 2t
