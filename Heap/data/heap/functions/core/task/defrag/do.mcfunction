#> heap:core/task/defrag/do
#
# @within heap:core/task/defrag/

#>
# @within
#   heap:core/task/defrag/do
#   heap:core/task/defrag/merge_front
#   heap:core/task/defrag/merge_back
  #declare score_holder heap:addr_front
  #declare score_holder heap:size_front
  #declare score_holder heap:end_front
  #declare score_holder heap:addr_back
  #declare score_holder heap:size_back
  #declare score_holder heap:end_back

execute store result score heap:addr_front heap store result score heap:end_front heap run data get storage heap.free_ring: ""[-2][0] 1.0
execute store result score heap:size_front heap run data get storage heap.free_ring: ""[-2][1] 1.0
scoreboard players operation heap:end_front heap += heap:size_front heap

execute store result score heap:addr_back heap store result score heap:end_back heap run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result score heap:size_back heap run data get storage heap.free_ring: ""[-1][1] 1.0
scoreboard players operation heap:end_back heap += heap:size_back heap

execute if score heap:end_front heap = heap:addr_back heap run function heap:core/task/defrag/merge_front
execute if score heap:end_back heap = heap:addr_front heap run function heap:core/task/defrag/merge_back

scoreboard players reset heap:addr_front heap
scoreboard players reset heap:size_front heap
scoreboard players reset heap:end_front heap
scoreboard players reset heap:addr_back heap
scoreboard players reset heap:size_back heap
scoreboard players reset heap:end_back heap
