#> heap:core/touch/-/3/2
#
# @within heap:core/touch/-/3/

execute if score heap:addr heap matches 8 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[8].- set value 0b
execute if score heap:addr heap matches 9 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[9].- set value 0b
execute if score heap:addr heap matches 10 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[10].- set value 0b
execute if score heap:addr heap matches 11 run data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[11].- set value 0b
