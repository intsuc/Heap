#> heap:core/find_free_cell/match
#
# @within heap:core/find_free_cell/**

data modify storage heap._: ret.ptr set from storage heap.free_ring: ""[-1][0]

data remove storage heap.free_ring: ""[-1]

function heap:core/free_ring/decrement
