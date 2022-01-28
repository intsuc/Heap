#> heap:core/touch/-/1/0
#
# @within heap:core/touch/-/1/

execute if score heap:addr heap matches 0 run data modify storage heap: _[{-: 0b}]._[0].- set value 0b
execute if score heap:addr heap matches 1 run data modify storage heap: _[{-: 0b}]._[1].- set value 0b
execute if score heap:addr heap matches 2 run data modify storage heap: _[{-: 0b}]._[2].- set value 0b
execute if score heap:addr heap matches 3 run data modify storage heap: _[{-: 0b}]._[3].- set value 0b
