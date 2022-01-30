#> heap:core/touch_cell/s/2
#
# @within heap:core/touch_cell/s/
#
# @input
#   score heap:ptr heap

#>
# @private
#declare score_holder heap:ptr

execute store result storage heap: cache[8] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[{-: 0b}]._[{-: 0b}]._[].s
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}].s set value 0b
