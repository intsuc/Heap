#> heap:core/touch/-/0/1
#
# @within heap:core/touch/-/0/

execute if score heap:addr heap matches 4 run data modify storage heap: _[4].- set value 0b
execute if score heap:addr heap matches 5 run data modify storage heap: _[5].- set value 0b
execute if score heap:addr heap matches 6 run data modify storage heap: _[6].- set value 0b
execute if score heap:addr heap matches 7 run data modify storage heap: _[7].- set value 0b
