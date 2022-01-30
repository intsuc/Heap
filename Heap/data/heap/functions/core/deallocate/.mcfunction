#> heap:core/deallocate/
#
# @within heap:api/deallocate

function heap:core/touch_cell/-/

data modify storage heap.free_ring: "" append value [I; 0, 0]
data modify storage heap.free_ring: ""[-1][0] set from storage heap._: in.ptr
data modify storage heap.free_ring: ""[-1][1] set from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.size

#>
# @private
#declare score_holder heap:free_size
execute store result score heap:free_size heap run data get storage heap.free_ring: size 1.0
execute store result storage heap.free_ring: size int 1.0 run scoreboard players add heap:free_size heap 1
scoreboard players reset heap:free_size heap

# Cancel out `link` and `unlink`.
  data modify storage heap.collector: link append from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.unlink[]
  data modify storage heap.collector: unlink append from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.link[]

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}
