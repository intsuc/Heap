#> heap:core/free_ring/reverse
#
# @within heap:core/free_ring/**

data modify storage heap.free_ring: "" append from storage heap.free_ring: aux[-1]
data remove storage heap.free_ring: aux[-1]

execute if data storage heap.free_ring: aux[0] run function heap:core/free_ring/reverse
