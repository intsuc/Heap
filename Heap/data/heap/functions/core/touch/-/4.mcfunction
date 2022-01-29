#> heap:core/touch/-/4
#
# @within heap:core/touch/-/
#
# @input
#   score heap:addr heap

#>
# @private
#declare score_holder heap:addr

execute store result storage heap: cache[4] int 1.0 run scoreboard players get heap:addr heap

data remove storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].-
execute unless data storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ set from storage heap.immutable: node

execute if score heap:addr heap matches 0 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[0].- set value 0b
execute if score heap:addr heap matches 1 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[1].- set value 0b
execute if score heap:addr heap matches 2 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[2].- set value 0b
execute if score heap:addr heap matches 3 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[3].- set value 0b
execute if score heap:addr heap matches 4 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[4].- set value 0b
execute if score heap:addr heap matches 5 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[5].- set value 0b
