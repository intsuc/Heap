#> heap:tests/deallocate_heap_occupied_size/
#
# @within heap:tests

say deallocate_heap_occupied_size

#>
# @private
  #declare score_holder heap:occupied_before
  #declare score_holder heap:occupied_after

execute store result score heap:occupied_before heap run data get storage heap: occupied 1.0

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/deallocate

execute store result score heap:occupied_after heap run data get storage heap: occupied 1.0

execute unless score heap:occupied_before heap = heap:occupied_after heap run function heap:fail

scoreboard players reset heap:occupied_before heap
scoreboard players reset heap:occupied_after heap
