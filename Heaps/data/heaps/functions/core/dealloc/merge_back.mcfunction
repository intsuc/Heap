#> heaps:core/dealloc/merge_back
#
# @within heaps:core/dealloc/

execute store result storage heaps.free: out[-1][0] int 1.0 run scoreboard players get heaps:addr_top heaps
execute store result storage heaps.free: out[-1][1] int 1.0 run scoreboard players operation heaps:size heaps += heaps:size_top heaps
