#> heap:core/collect/count/
#
# @internal

#>
# @within heap:core/collect/count/**
#declare score_holder heap:count

execute store result score heap:count heap run data get storage heap.config: count_limit
execute if data storage heap.collector: link[0] run function heap:core/collect/count/link

execute store result score heap:count heap run data get storage heap.config: count_limit
execute if data storage heap.collector: unlink[0] run function heap:core/collect/count/unlink

scoreboard players reset heap:count heap
