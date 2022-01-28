#> heaps:core/find/fit
#
# @within heaps:core/find/**

#>
# @private
  #declare score_holder heaps:addr
  #declare score_holder heaps:remaining

execute store result storage heaps.temp: out.addr int 1.0 store result score heaps:addr heaps run data get storage heaps.free: out[-1][0] 1.0
execute store result storage heaps.free: out[-1][0] int 1.0 run scoreboard players operation heaps:addr heaps += heaps:required heaps

scoreboard players operation heaps:remaining heaps = heaps:available heaps
execute store result storage heaps.free: out[-1][1] int 1.0 run scoreboard players operation heaps:remaining heaps -= heaps:required heaps

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:remaining heaps
