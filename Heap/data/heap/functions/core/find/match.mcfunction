#> heap:core/find/match
#
# @within heap:core/find/**

data modify storage heap._: out.addr set from storage heap.free: out[-1][0]

data remove storage heap.free: out[-1]
execute store result storage heap.free: size int 1.0 run scoreboard players remove heap:free heap 1
