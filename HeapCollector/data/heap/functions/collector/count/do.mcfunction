#> heap:collector/count/do
#
# @internal
#
# @input
#   score heap:credit heap

execute if score heap:credit heap matches 1.. if data storage heap.collector: link[0] run function heap:collector/count/link

execute if score heap:credit heap matches 1.. if data storage heap.collector: unlink[0] run function heap:collector/count/unlink

scoreboard players reset heap:credit heap
scoreboard players reset heap:link heap
scoreboard players reset heap:unlink heap
scoreboard players reset heap:count heap
