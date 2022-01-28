#> heap:core/dealloc/merge_front
#
# @within heap:core/dealloc/

execute store result storage heap.free: out[-1][0] int 1.0 run scoreboard players get heap:addr heap
execute store result storage heap.free: out[-1][1] int 1.0 run scoreboard players operation heap:size heap += heap:size_top heap
