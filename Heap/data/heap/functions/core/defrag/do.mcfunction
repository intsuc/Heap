#> heap:core/defrag/do
#
# @within heap:core/defrag/**

execute store result score heap:addr_front heap store result score heap:end_front heap run data get storage heap.free_ring: ""[-2][0] 1.0
execute store result score heap:size_front heap run data get storage heap.free_ring: ""[-2][1] 1.0
scoreboard players operation heap:end_front heap += heap:size_front heap

execute store result score heap:addr_back heap store result score heap:end_back heap run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result score heap:size_back heap run data get storage heap.free_ring: ""[-1][1] 1.0
scoreboard players operation heap:end_back heap += heap:size_back heap

execute if score heap:end_front heap = heap:addr_back heap run function heap:core/defrag/merge_front
execute if score heap:end_back heap = heap:addr_front heap run function heap:core/defrag/merge_back

scoreboard players remove heap:defrag heap 1
execute if score heap:defrag heap matches 1.. run function heap:core/defrag/do
