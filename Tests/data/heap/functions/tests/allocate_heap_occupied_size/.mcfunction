#> heap:tests/allocate_heap_occupied_size/
#
# @within heap:tests

say allocate_heap_occupied_size

#>
# @private
  #declare score_holder heap:occupied_before
  #declare score_holder heap:occupied_after

execute store result score heap:occupied_before heap run data get storage heap: occupied 1.0

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

scoreboard players add heap:occupied_after heap 2
execute unless score heap:occupied_before heap = heap:occupied_after heap run function heap:fail

scoreboard players reset heap:occupied_before heap
scoreboard players reset heap:occupied_after heap
