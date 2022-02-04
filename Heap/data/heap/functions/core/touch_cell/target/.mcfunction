#> heap:core/touch_cell/target/
#
# @within heap:api/touch/target
#
# @input
#   storage heap._: arg
#       ptr: int
#       multiple: bool? = false

execute unless data storage heap._: arg.multiple run data modify storage heap._: arg.multiple set value false

function heap:core/touch_cell/internal/

#>
# @within heap:core/touch_cell/target/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0

execute store result score heap:cache heap run data get storage heap: cache[12] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/0

execute store result score heap:cache heap run data get storage heap: cache[13] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/1

execute store result score heap:cache heap run data get storage heap: cache[14] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/2

execute store result score heap:cache heap run data get storage heap: cache[15] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/3

execute store result score heap:cache heap run data get storage heap: cache[16] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/4

execute store result score heap:cache heap run data get storage heap: cache[17] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/target/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
