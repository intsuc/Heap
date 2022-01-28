#> heap:core/touch/-/0/3
#
# @within heap:core/touch/-/0/

execute if score heap:addr heap matches 12 run data modify storage heap: _[12].- set value 0b
execute if score heap:addr heap matches 13 run data modify storage heap: _[13].- set value 0b
execute if score heap:addr heap matches 14 run data modify storage heap: _[14].- set value 0b
execute if score heap:addr heap matches 15 run data modify storage heap: _[15].- set value 0b
