#> heap:core/touch_cell/source/4
#
# @within heap:core/touch_cell/source/

execute store result storage heap: cache[22] int 1.0 run scoreboard players get heap:ptr heap

execute if data storage heap._: arg{multiple: false} run data remove storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[].s
data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}].s set value 0b