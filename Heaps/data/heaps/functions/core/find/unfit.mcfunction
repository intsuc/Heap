#> heaps:core/find/unfit
#
# @within heaps:core/find/**

data modify storage heaps.free: ""[-3].in append from storage heaps.free: ""[-3].out[-1]
data remove storage heaps.free: ""[-3].out[-1]

scoreboard players remove heaps:count heaps 1
execute if score heaps:count heaps matches 1.. run function heaps:core/find/check
