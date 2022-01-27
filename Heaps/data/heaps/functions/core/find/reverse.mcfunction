#> heaps:core/find/reverse
#
# @within heaps:core/find/**

data modify storage heaps.free: ""[-3].out append from storage heaps.free: ""[-3].in[-1]
data remove storage heaps.free: ""[-3].in[-1]

execute if data storage heaps.free: ""[-3].in[0] run function heaps:core/find/reverse
