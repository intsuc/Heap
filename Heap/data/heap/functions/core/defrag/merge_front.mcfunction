#> heap:core/defrag/merge_front
#
# @within heap:core/defrag/do

data remove storage heap.free_ring: ""[-1]
function heap:core/free_ring/decrement

execute store result storage heap.free_ring: ""[-1][1] int 1.0 run scoreboard players operation heap:size_front heap += heap:size_back heap
