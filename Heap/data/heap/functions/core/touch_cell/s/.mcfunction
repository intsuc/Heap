#> heap:core/touch_cell/s/
#
# @within heap:api/touch/s
#
# @input
#   storage heap._: in
#       ptr: int

function heap:core/touch_cell/-/

#>
# @within heap:core/touch_cell/s/**
  #declare score_holder heap:ptr
  #declare score_holder heap:cache

execute store result score heap:ptr heap run data get storage heap._: in.ptr 1.0

execute store result score heap:cache heap run data get storage heap: cache[6] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/0

execute store result score heap:cache heap run data get storage heap: cache[7] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/1

execute store result score heap:cache heap run data get storage heap: cache[8] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/2

execute store result score heap:cache heap run data get storage heap: cache[9] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/3

execute store result score heap:cache heap run data get storage heap: cache[10] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/4

execute store result score heap:cache heap run data get storage heap: cache[11] 1.0
execute unless score heap:ptr heap = heap:cache heap run function heap:core/touch_cell/s/5

scoreboard players reset heap:ptr heap
scoreboard players reset heap:cache heap
