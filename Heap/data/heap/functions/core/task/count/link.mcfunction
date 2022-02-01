#> heap:core/task/count/link
#
# @within
#   heap:core/task/count/
#   heap:core/task/count/link

data modify storage heap._: arg.ptr set from storage heap.collector: link[-1]
data remove storage heap.collector: link[-1]
function heap:core/touch_cell/internal/

# Increment `count`.
  execute store result storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count int 1.0000000009313226 run data get storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count 1.0

scoreboard players remove heap:credit heap 1
execute if score heap:credit heap matches 1.. if data storage heap.collector: link[0] run function heap:core/task/count/link
