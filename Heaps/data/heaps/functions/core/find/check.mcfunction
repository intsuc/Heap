#> heaps:core/find/check
#
# @within heaps:core/find/**

execute unless data storage heaps.free: ""[-3].out[0] run function heaps:core/find/reverse

execute store result score heaps:available heaps run data get storage heaps.free: ""[-3].out[-1][1]
execute if score heaps:required heaps <= heaps:available heaps run function heaps:core/find/fit
execute if score heaps:required heaps > heaps:available heaps run function heaps:core/find/unfit
