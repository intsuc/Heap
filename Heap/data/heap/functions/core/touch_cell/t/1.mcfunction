#> heap:core/touch_cell/t/1
#
# @within heap:core/touch_cell/t/

execute store result storage heap: cache[13] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[{-: 0b}]._[].t
data modify storage heap: _[{-: 0b}]._[{-: 0b}].t set value 0b
