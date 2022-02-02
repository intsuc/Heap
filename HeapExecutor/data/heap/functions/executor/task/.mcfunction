#> heap:executor/task/
#
# @within minecraft:tick

#>
# @within heap:executor/task/**
#declare score_holder heap:credit
execute store result score heap:credit heap run data get storage heap.executor: credit 1.0

execute if score heap:credit heap matches 1.. run function heap:executor/task/do

scoreboard players reset heap:credit heap
