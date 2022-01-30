#> heap:core/touch_cell/t/
#
# @within heap:api/touch/t
#
# @input
#   storage heap._: in
#       ptr: int

function heap:core/touch_cell/-/

#>
# @within heap:core/touch_cell/t/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache

execute store result score heap:ptr heap run data get storage heap._: in.ptr 1.0

execute store result score heap:cache heap run data get storage heap: cache[12] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/0

execute store result score heap:cache heap run data get storage heap: cache[13] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/1

execute store result score heap:cache heap run data get storage heap: cache[14] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/2

execute store result score heap:cache heap run data get storage heap: cache[15] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/3

execute store result score heap:cache heap run data get storage heap: cache[16] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/4

execute store result score heap:cache heap run data get storage heap: cache[17] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/t/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
