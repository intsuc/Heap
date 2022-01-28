#> heap:core/free_ring/next
#
# @internal

data modify storage heap.free_ring: aux append from storage heap.free_ring: ""[-1]
data remove storage heap.free_ring: ""[-1]
