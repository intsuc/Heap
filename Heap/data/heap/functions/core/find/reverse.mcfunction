#> heap:core/find/reverse
#
# @within heap:core/find/**

data modify storage heap.free: out append from storage heap.free: in[-1]
data remove storage heap.free: in[-1]

execute if data storage heap.free: in[0] run function heap:core/find/reverse
