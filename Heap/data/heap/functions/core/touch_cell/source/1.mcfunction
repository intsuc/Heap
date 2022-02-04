#> heap:core/touch_cell/source/1
#
# @within heap:core/touch_cell/source/

execute store result storage heap: cache_source[1].offset int 1.0 run scoreboard players get heap:offset heap
data modify storage heap: cache_source[{2: 0b}].offset set value -1

execute if data storage heap._: arg{add: false} run data remove storage heap: _[{i: 0b}]._[].s
data modify storage heap: _[{i: 0b}]._[{i: 0b}].s set value 0b
