#> heap:core/find/check
#
# @within heap:core/find/**

function heap:core/free_ring/check

execute store result score heap:available heap run data get storage heap.free_ring: ""[-1][1] 1.0
execute if score heap:required heap < heap:available heap run function heap:core/find/fit
execute if score heap:required heap = heap:available heap run function heap:core/find/match
execute if score heap:required heap > heap:available heap run function heap:core/find/unfit
