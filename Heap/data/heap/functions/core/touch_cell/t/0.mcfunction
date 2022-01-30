#> heap:core/touch_cell/t/0
#
# @within heap:core/touch_cell/t/
#
# @input
#   score heap:ptr heap

#>
# @private
#declare score_holder heap:ptr

execute store result storage heap: cache[12] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[].t
data modify storage heap: _[{-: 0b}].t set value 0b
