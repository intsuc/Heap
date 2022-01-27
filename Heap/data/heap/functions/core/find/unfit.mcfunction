#> heap:core/find/unfit
#
# @within heap:core/find/**

data modify storage heap.free: ""[-3].in append from storage heap.free: ""[-3].out[-1]
data remove storage heap.free: ""[-3].out[-1]

scoreboard players remove heap:count heap 1
execute if score heap:count heap matches 1.. run function heap:core/find/check
