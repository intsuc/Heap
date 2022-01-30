#> heap:core/task/defrag/
#
# @within minecraft:tick

function heap:core/free_ring/check

#>
# @within heap:core/task/defrag/**
#declare score_holder heap:free_ring_size
execute store result score heap:free_ring_size heap run data get storage heap.free_ring: size 1.0

# If `free_ring_size` ≥ 2 (1610612642 - 1610612640), perform the defragmentation.
  execute if score heap:free_ring_size heap matches 1610612642.. run function heap:core/task/defrag/do

scoreboard players reset heap:free_ring_size heap
