#> heap:collector/count/
#
# @within
#   minecraft:tick
#   heap:collector/collect/

#>
# @within heap:collector/count/**
  #declare score_holder heap:credit
  #declare score_holder heap:link
  #declare score_holder heap:unlink
  #declare score_holder heap:count

execute if data storage heap.executor: credit store result score heap:credit heap run data get storage heap.executor: credit 1.0
execute unless data storage heap.executor: credit store result score heap:credit heap run data get storage heap.config: count_limit 1.0

execute if score heap:credit heap matches 1.. if data storage heap.collector: link[0] run function heap:collector/count/link

execute if score heap:credit heap matches 1.. if data storage heap.collector: unlink[0] run function heap:collector/count/unlink

execute store result storage heap.executor: credit_out byte 1.0 if score heap:credit heap matches 0

scoreboard players reset heap:credit heap
scoreboard players reset heap:link heap
scoreboard players reset heap:unlink heap
scoreboard players reset heap:count heap
