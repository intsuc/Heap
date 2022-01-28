#> heap:core/touch/-/
#
# @internal
#
# @input
#   storage heap._: in
#       addr: int

#>
# @private
  #declare score_holder heap:addr
  #declare score_holder heap:cache
  #declare score_holder heap:node_size

scoreboard players set heap:node_size heap 16
execute store result score heap:addr heap run data get storage heap._: in.addr 0.000244140625
execute store result score heap:cache heap run data get storage heap: cache[0] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/-/0/

execute store result score heap:addr heap run data get storage heap._: in.addr 0.00390625
scoreboard players operation heap:addr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[1] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/-/1/

execute store result score heap:addr heap run data get storage heap._: in.addr 0.0625
scoreboard players operation heap:addr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[2] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/-/2/

execute store result score heap:addr heap run data get storage heap._: in.addr 1.0
scoreboard players operation heap:addr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[3] 1.0
execute unless score heap:addr heap = heap:cache heap run function heap:core/touch/-/3/

scoreboard players reset heap:addr heap
scoreboard players reset heap:cache heap
scoreboard players reset heap:node_size heap
