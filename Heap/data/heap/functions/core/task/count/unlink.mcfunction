#> heap:core/task/count/unlink
#
# @within
#   heap:core/task/count/
#   heap:core/task/count/unlink

data modify storage heap._: arg.ptr set from storage heap.collector: unlink[-1]
data remove storage heap.collector: unlink[-1]
function heap:core/touch_cell/internal/

# Decrement `count`.
  execute store result storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count int 0.9999999999999999 run data get storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count 1.0

scoreboard players remove heap:count heap 1
execute if score heap:count heap matches 1.. if data storage heap.collector: unlink[0] run function heap:core/task/count/unlink
