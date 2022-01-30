#> heap:core/find_free_cell/
#
# @internal
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       ptr: int?

#>
# @within heap:core/find_free_cell/**
  #declare score_holder heap:available
  #declare score_holder heap:required
  #declare score_holder heap:free
  #declare score_holder heap:count

execute store result score heap:required heap run data get storage heap._: in.size 1.0
execute store result score heap:free heap run data get storage heap.free_ring: size 1.0
scoreboard players operation heap:count heap = heap:free heap

data remove storage heap._: out.ptr
function heap:core/find_free_cell/check

scoreboard players reset heap:available heap
scoreboard players reset heap:required heap
scoreboard players reset heap:free heap
scoreboard players reset heap:count heap
