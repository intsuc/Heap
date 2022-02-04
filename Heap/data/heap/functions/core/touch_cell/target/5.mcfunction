#> heap:core/touch_cell/target/5
#
# @within heap:core/touch_cell/target/

execute store result storage heap: cache_target[5].offset int 1.0 run scoreboard players get heap:offset heap

execute if data storage heap._: arg{multiple: false} run data remove storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[].t
data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}].t set value 0b
