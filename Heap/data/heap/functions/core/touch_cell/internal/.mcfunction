#> heap:core/touch_cell/internal/
#
# @internal
#
# @input
#   storage heap._: arg
#       ptr: int

#>
# @within heap:core/touch_cell/internal/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache
  #declare score_holder heap:node_size

scoreboard players set heap:node_size heap 6
execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.0001286008230452675
execute store result score heap:cache heap run data get storage heap: cache[0] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/0

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.0007716049382716049
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[1] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/1

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.004629629629629629
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[2] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/2

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.027777777777777776
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[3] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/3

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 0.16666666666666666
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[4] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/4

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0
scoreboard players operation heap:ptr heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache[5] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/internal/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
scoreboard players reset heap:node_size heap
