#> heap:core/touch_cell/target/1
#
# @within heap:core/touch_cell/target/

execute store result storage heap: cache[13] int 1.0 run scoreboard players get heap:ptr heap

execute if data storage heap._: arg{multiple: false} run data remove storage heap: _[{i: 0b}]._[].t
data modify storage heap: _[{i: 0b}]._[{i: 0b}].t set value 0b
