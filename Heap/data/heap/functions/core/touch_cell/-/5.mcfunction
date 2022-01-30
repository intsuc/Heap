#> heap:core/touch_cell/-/5
#
# @within heap:core/touch_cell/-/
#
# @input
#   score heap:ptr heap

#>
# @private
#declare score_holder heap:ptr

execute store result storage heap: cache[5] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].-
execute unless data storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ set from storage heap.immutable: node

execute if score heap:ptr heap matches 0 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[0].- set value 0b
execute if score heap:ptr heap matches 1 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[1].- set value 0b
execute if score heap:ptr heap matches 2 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[2].- set value 0b
execute if score heap:ptr heap matches 3 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[3].- set value 0b
execute if score heap:ptr heap matches 4 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[4].- set value 0b
execute if score heap:ptr heap matches 5 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[5].- set value 0b