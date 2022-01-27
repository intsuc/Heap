#> heap:core/find/check
#
# @within heap:core/find/**

execute unless data storage heap.free: ""[-3].out[0] run function heap:core/find/reverse

execute store result score heap:available heap run data get storage heap.free: ""[-3].out[-1][1]
execute if score heap:required heap <= heap:available heap run function heap:core/find/fit
execute if score heap:required heap > heap:available heap run function heap:core/find/unfit
