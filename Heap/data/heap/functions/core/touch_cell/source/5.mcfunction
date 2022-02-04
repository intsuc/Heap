#> heap:core/touch_cell/source/5
#
# @within heap:core/touch_cell/source/

execute store result storage heap: cache_source[5].offset int 1.0 run scoreboard players get heap:offset heap

execute if data storage heap._: arg{multiple: false} run data remove storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[].s
data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}].s set value 0b
