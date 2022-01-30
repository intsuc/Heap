#> heap:core/find/match
#
# @within heap:core/find/**

data modify storage heap._: out.ptr set from storage heap.free_ring: ""[-1][0]

data remove storage heap.free_ring: ""[-1]
execute store result storage heap.free_ring: size int 1.0 run scoreboard players remove heap:free heap 1
