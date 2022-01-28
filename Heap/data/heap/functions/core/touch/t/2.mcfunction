#> heap:core/touch/t/2
#
# @within heap:core/touch/t/
#
# @input
#   score heap:addr heap

#>
# @private
#declare score_holder heap:addr

execute store result storage heap: cache[10] int 1.0 run scoreboard players get heap:addr heap

data remove storage heap: _[{-: 0b}]._[{-: 0b}]._[].t
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}].t set value 0b
