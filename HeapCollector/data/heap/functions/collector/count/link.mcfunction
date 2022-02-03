#> heap:collector/count/link
#
# @within
#   heap:collector/count/
#   heap:collector/count/link

execute store result score heap:link heap store result storage heap._: arg.ptr int 1.0 run data get storage heap.collector: link[-1] 1.0
data remove storage heap.collector: link[-1]
function heap:core/touch_cell/internal/

execute store result score heap:unlink heap run data get storage heap.collector: unlink[-1]

# If `link` = `unlink`, fuse them.
  execute if score heap:link heap = heap:unlink heap run data remove storage heap.collector: unlink[-1]

# If `link` ≠ `unlink`, increment `count`.
  execute unless score heap:link heap = heap:unlink heap store result storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count int 1.0000000009313226 run data get storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count 1.0

scoreboard players remove heap:credit heap 1
execute if score heap:credit heap matches 1.. if data storage heap.collector: link[0] run function heap:collector/count/link
