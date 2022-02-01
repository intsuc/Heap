#> heap:core/touch_cell/filter/
#
# @within heap:api/touch/2
#
# @input
#   storage heap._: arg
#       ptr: int

function heap:core/touch_cell/internal/

#>
# @within heap:core/touch_cell/filter/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0

execute store result score heap:cache heap run data get storage heap: cache[12] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/0

execute store result score heap:cache heap run data get storage heap: cache[13] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/1

execute store result score heap:cache heap run data get storage heap: cache[14] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/2

execute store result score heap:cache heap run data get storage heap: cache[15] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/3

execute store result score heap:cache heap run data get storage heap: cache[16] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/4

execute store result score heap:cache heap run data get storage heap: cache[17] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/filter/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
