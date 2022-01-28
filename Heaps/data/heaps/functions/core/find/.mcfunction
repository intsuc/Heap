#> heaps:core/find/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       size: int
#
# @output
#   storage heaps.temp: out
#       addr: int?

#>
# @within heaps:core/find/**
  #declare score_holder heaps:available
  #declare score_holder heaps:required
  #declare score_holder heaps:free
  #declare score_holder heaps:count

execute store result score heaps:required heaps run data get storage heaps.temp: in.size 1.0
execute store result score heaps:free heaps run data get storage heaps.free: size 1.0
scoreboard players operation heaps:count heaps = heaps:free heaps

data remove storage heaps.temp: out.addr
function heaps:core/find/check

scoreboard players reset heaps:available heaps
scoreboard players reset heaps:required heaps
scoreboard players reset heaps:free heaps
scoreboard players reset heaps:count heaps
