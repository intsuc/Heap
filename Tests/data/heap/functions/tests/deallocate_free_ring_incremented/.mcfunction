#> heap:tests/deallocate_free_ring_incremented/
#
# @within heap:tests

say deallocate_free_ring_incremented

data modify storage heap._: arg set value {}
function heap:api/allocate

#>
# @private
  #declare score_holder heap:size_before
  #declare score_holder heap:size_after
  #declare score_holder heap:diff

execute store result score heap:size_before heap run data get storage heap.free_ring: size

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/deallocate

execute store result score heap:size_after heap run data get storage heap.free_ring: size

scoreboard players operation heap:diff heap = heap:size_after heap
scoreboard players operation heap:diff heap -= heap:size_before heap

execute unless score heap:diff heap matches 1 run function heap:fail
