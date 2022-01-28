#> heap:core/touch/s/
#
# @within heap:api/touch/s
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

execute store result score heap:cache heap run data get storage heap: cache[4] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/s/0

execute store result score heap:cache heap run data get storage heap: cache[5] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/s/1

execute store result score heap:cache heap run data get storage heap: cache[6] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/s/2

execute store result score heap:cache heap run data get storage heap: cache[7] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/s/3

scoreboard players reset heap:addr heap
scoreboard players reset heap:cache heap
