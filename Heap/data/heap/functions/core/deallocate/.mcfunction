#> heap:core/deallocate/
#
# @within heap:api/deallocate
#
# @input
#   storage heap._: arg
#       ptr: int
#           The pointer to the cell to be deallocated.

function heap:core/touch_cell/internal/

#>
# @within heap:core/deallocate/**
  #declare score_holder heap:ptr
  #declare score_holder heap:size

execute store result score heap:ptr heap run data get storage heap._: arg.ptr 1.0
execute store result score heap:size heap run data get storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._size

# Retrun the cell to the free ring.
  data modify storage heap.free_ring: "" append value [I; 0, 0]
  execute store result storage heap.free_ring: ""[-1][0] int 1.0 run scoreboard players get heap:ptr heap
  execute store result storage heap.free_ring: ""[-1][1] int 1.0 run scoreboard players get heap:size heap

function heap:core/free_ring/increment

# Cancel out `link` and `unlink`.
  data modify storage heap.collector: link append from storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._unlink[]
  data modify storage heap.collector: unlink append from storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._link[]

# Deallocate the head cell.
  data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}] set value {i: 0b}

# Deallocate the tail cells.
  execute if score heap:size heap matches 2.. run function heap:core/deallocate/do

scoreboard players reset heap:ptr heap
scoreboard players reset heap:size heap
