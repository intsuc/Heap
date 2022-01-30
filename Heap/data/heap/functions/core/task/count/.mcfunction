#> heap:core/task/count/
#
# @within
#   minecraft:tick
#   heap:core/task/collect

#>
# @within heap:core/task/count/**
#declare score_holder heap:count

execute store result score heap:count heap run data get storage heap.config: count_limit
execute if score heap:count heap matches 1.. if data storage heap.collector: link[0] run function heap:core/task/count/link

execute store result score heap:count heap run data get storage heap.config: count_limit
execute if score heap:count heap matches 1.. if data storage heap.collector: unlink[0] run function heap:core/task/count/unlink

scoreboard players reset heap:count heap
