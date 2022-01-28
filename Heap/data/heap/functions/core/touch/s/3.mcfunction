#> heap:core/touch/s/3
#
# @within heap:core/touch/s/
#
# @input
#   score heap:addr heap

#>
# @private
#declare score_holder heap:addr

execute store result storage heap: cache[7] int 1.0 run scoreboard players get heap:addr heap

data remove storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].s
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].s set value 0b
