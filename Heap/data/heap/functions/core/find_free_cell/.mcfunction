#> heap:core/find_free_cell/
#
# @internal
#
# @input
#   storage heap._: arg
#       size: int
#
# @output
#   storage heap._: ret
#       ptr: int?

#>
# @within heap:core/find_free_cell/**
  #declare score_holder heap:available
  #declare score_holder heap:required
  #declare score_holder heap:count

execute store result score heap:required heap run data get storage heap._: arg.size 1.0
execute store result score heap:count heap run data get storage heap.free_ring: size 1.0

data remove storage heap._: ret.ptr
function heap:core/find_free_cell/check

scoreboard players reset heap:available heap
scoreboard players reset heap:required heap
scoreboard players reset heap:count heap
