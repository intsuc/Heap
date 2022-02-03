#> heap:core/defrag/
#
# @within minecraft:tick

function heap:core/free_ring/check

#>
# @within heap:core/defrag/**
  #declare score_holder heap:free_ring_size
  #declare score_holder heap:defrag
  #declare score_holder heap:addr_front
  #declare score_holder heap:size_front
  #declare score_holder heap:end_front
  #declare score_holder heap:addr_back
  #declare score_holder heap:size_back
  #declare score_holder heap:end_back

execute store result score heap:free_ring_size heap run data get storage heap.free_ring: size 1.0
execute store result score heap:defrag heap run data get storage heap.config: defrag_limit

# If `free_ring_size` ≥ 2 (1610612642 - 1610612640), perform the defragmentation.
  execute if score heap:defrag heap matches 1.. if score heap:free_ring_size heap matches 1610612642.. run function heap:core/defrag/do

scoreboard players reset heap:free_ring_size heap
scoreboard players reset heap:defrag heap
scoreboard players reset heap:addr_front heap
scoreboard players reset heap:size_front heap
scoreboard players reset heap:end_front heap
scoreboard players reset heap:addr_back heap
scoreboard players reset heap:size_back heap
scoreboard players reset heap:end_back heap
