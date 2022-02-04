#> heap:core/touch_cell/target/
#
# @within heap:api/touch/target
#
# @input
#   storage heap._: arg
#       ptr: int
#       add: bool? = false

execute unless data storage heap._: arg.add run data modify storage heap._: arg.add set value false

function heap:core/touch_cell/internal/

#>
# @within heap:core/touch_cell/target/**
  #declare score_holder heap:offset
  #declare score_holder heap:cache
  #declare score_holder heap:node_size

scoreboard players set heap:node_size heap 6
execute store result score heap:offset heap run data get storage heap._: arg.ptr 0.0001286008230452675
execute store result score heap:cache heap run data get storage heap: cache_target[0].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/0

execute store result score heap:offset heap run data get storage heap._: arg.ptr 0.0007716049382716049
scoreboard players operation heap:offset heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache_target[1].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/1

execute store result score heap:offset heap run data get storage heap._: arg.ptr 0.004629629629629629
scoreboard players operation heap:offset heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache_target[2].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/2

execute store result score heap:offset heap run data get storage heap._: arg.ptr 0.027777777777777776
scoreboard players operation heap:offset heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache_target[3].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/3

execute store result score heap:offset heap run data get storage heap._: arg.ptr 0.16666666666666666
scoreboard players operation heap:offset heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache_target[4].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/4

execute store result score heap:offset heap run data get storage heap._: arg.ptr 1.0
scoreboard players operation heap:offset heap %= heap:node_size heap
execute store result score heap:cache heap run data get storage heap: cache_target[5].offset 1.0
execute unless score heap:offset heap = heap:cache heap run function heap:core/touch_cell/target/5

scoreboard players reset heap:offset heap
scoreboard players reset heap:cache heap
scoreboard players reset heap:node_size heap
