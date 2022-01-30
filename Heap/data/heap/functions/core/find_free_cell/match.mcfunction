#> heap:core/find_free_cell/match
#
# @within heap:core/find_free_cell/**

data modify storage heap._: out.ptr set from storage heap.free_ring: ""[-1][0]

data remove storage heap.free_ring: ""[-1]

# Decrement `size`.
execute store result storage heap.free_ring: size int 0.9999999999999999 run data get storage heap.free_ring: size 1.0
