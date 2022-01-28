#> heaps:core/touch/-/0/0
#
# @within heaps:core/touch/-/0/

execute if score heaps:addr heaps matches 0 run data modify storage heaps: _[0].- set value 0b
execute if score heaps:addr heaps matches 1 run data modify storage heaps: _[1].- set value 0b
execute if score heaps:addr heaps matches 2 run data modify storage heaps: _[2].- set value 0b
execute if score heaps:addr heaps matches 3 run data modify storage heaps: _[3].- set value 0b
