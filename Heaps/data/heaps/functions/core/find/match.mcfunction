#> heaps:core/find/match
#
# @within heaps:core/find/**

data remove storage heaps.free: out[-1]
execute store result storage heaps.free: size int 1.0 run scoreboard players remove heaps:free heaps 1
