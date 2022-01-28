#> heap:core/dealloc/append
#
# @within heap:core/dealloc/

data modify storage heap.free: out append value [I; 0, 0]
execute store result storage heap.free: out[-1][0] int 1.0 run scoreboard players get heap:addr heap
execute store result storage heap.free: out[-1][1] int 1.0 run scoreboard players get heap:size heap

#>
# @private
#declare score_holder heap:free_size

execute store result score heap:free_size heap run data get storage heap.free: size 1.0
execute store result storage heap.free: size int 1.0 run scoreboard players add heap:free_size heap 1

scoreboard players reset heap:free_size heap
