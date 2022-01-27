#> heap:core/find/
#
# @internal
#
# @input
#   storage heap: in
#       size: int
#
# @output
#   storage heap: out
#       addr: int?

#>
# @within heap:core/find/**
  #declare score_holder heap:available
  #declare score_holder heap:required
  #declare score_holder heap:free
  #declare score_holder heap:count

execute store result score heap:required heap run data get storage heap: in.size 1.0
execute store result score heap:free heap run data get storage heap.free: ""[-3].size 1.0
scoreboard players operation heap:count heap = heap:free heap

data remove storage heap: out.addr

function heap:core/find/check

execute store result storage heap.free: ""[-3].size int 1.0 run scoreboard players get heap:free heap

scoreboard players reset heap:available heap
scoreboard players reset heap:required heap
scoreboard players reset heap:free heap
scoreboard players reset heap:count heap
