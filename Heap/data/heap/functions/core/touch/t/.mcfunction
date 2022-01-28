#> heap:core/touch/t/
#
# @within heap:api/touch/t
#
# @input
#   storage heap._: in
#       addr: int

function heap:core/touch/-/

#>
# @private
  #declare score_holder heap:addr
  #declare score_holder heap:cache

execute store result score heap:addr heap run data get storage heap._: in.addr 1.0

execute store result score heap:cache heap run data get storage heap: cache[8] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/t/0

execute store result score heap:cache heap run data get storage heap: cache[9] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/t/1

execute store result score heap:cache heap run data get storage heap: cache[10] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/t/2

execute store result score heap:cache heap run data get storage heap: cache[11] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/t/3

scoreboard players reset heap:addr heap
scoreboard players reset heap:cache heap
