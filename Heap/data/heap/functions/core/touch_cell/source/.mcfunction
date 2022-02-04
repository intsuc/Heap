#> heap:core/touch_cell/source/
#
# @within heap:api/touch/s
#
# @input
#   storage heap._: arg
#       ptr: int
#       multiple: bool? = false

execute unless data storage heap._: arg.multiple run data modify storage heap._: arg.multiple set value false

function heap:core/touch_cell/internal/

#>
# @within heap:core/touch_cell/source/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0

execute store result score heap:cache heap run data get storage heap: cache[18] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/0

execute store result score heap:cache heap run data get storage heap: cache[19] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/1

execute store result score heap:cache heap run data get storage heap: cache[20] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/2

execute store result score heap:cache heap run data get storage heap: cache[21] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/3

execute store result score heap:cache heap run data get storage heap: cache[22] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/4

execute store result score heap:cache heap run data get storage heap: cache[23] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/source/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
