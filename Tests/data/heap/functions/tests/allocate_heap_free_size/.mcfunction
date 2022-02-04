#> heap:tests/allocate_heap_free_size/
#
# @within heap:tests

say allocate_heap_free_size

#>
# @private
  #declare score_holder heap:free_before
  #declare score_holder heap:free_after

execute store result score heap:free_before heap run data get storage heap: free 1.0

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

scoreboard players add heap:free_after heap 2
execute unless score heap:free_before heap = heap:free_after heap run function heap:fail

scoreboard players reset heap:free_before heap
scoreboard players reset heap:free_after heap
