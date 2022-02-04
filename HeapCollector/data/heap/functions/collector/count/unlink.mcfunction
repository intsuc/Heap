#> heap:collector/count/unlink
#
# @within heap:collector/count/**

data modify storage heap._: arg.ptr set from storage heap.collector: unlink[-1]
data remove storage heap.collector: unlink[-1]
function heap:core/touch_cell/internal/

# Decrement `count`.
  execute store result score heap:count heap store result storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count int 0.9999999999999999 run data get storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count 1.0

# If `count` = 0 (1610612640 - 1610612640), release it.
  execute if score heap:count heap matches 1610612640 run data remove storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._

scoreboard players remove heap:credit heap 1
execute if score heap:credit heap matches 1.. if data storage heap.collector: unlink[0] run function heap:collector/count/unlink
