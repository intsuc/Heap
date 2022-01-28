#> heaps:core/find/reverse
#
# @within heaps:core/find/**

data modify storage heaps.free: out append from storage heaps.free: in[-1]
data remove storage heaps.free: in[-1]

execute if data storage heaps.free: in[0] run function heaps:core/find/reverse
