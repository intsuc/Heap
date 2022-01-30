#> heap:core/touch_cell/s/0
#
# @within heap:core/touch_cell/s/

execute store result storage heap: cache[6] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[].s
data modify storage heap: _[{-: 0b}].s set value 0b
