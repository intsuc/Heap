#> heap:core/touch_cell/shift/
#
# @within heap:api/touch/
#
# @input
#   storage heap._: arg
#       ptr: int

#>
# @within heap:core/touch_cell/shift/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache
  #declare score_holder heap:node_size

scoreboard players set heap:node_size heap 6
execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.0001286008230452675
execute store result score heap:cache heap run data get storage heap: cache[6] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/0

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.0007716049382716049
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[7] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/1

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.004629629629629629
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[8] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/2

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.027777777777777776
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[9] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/3

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.16666666666666666
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[10] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/4

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[11] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/shift/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
scoreboard players reset heap:node_size heap
