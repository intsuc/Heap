#> heaps:core/find/match
#
# @within heaps:core/find/**

data modify storage heaps.temp: out.addr set from storage heaps.free: out[-1][0]

data remove storage heaps.free: out[-1]
execute store result storage heaps.free: size int 1.0 run scoreboard players remove heaps:free heaps 1
