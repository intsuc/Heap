#> heap:core/find/reverse
#
# @within heap:core/find/**

data modify storage heap.free: ""[-3].out append from storage heap.free: ""[-3].in[-1]
data remove storage heap.free: ""[-3].in[-1]

execute if data storage heap.free: ""[-3].in[0] run function heap:core/find/reverse
