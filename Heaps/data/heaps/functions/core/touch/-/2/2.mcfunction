#> heaps:core/touch/-/2/2
#
# @within heaps:core/touch/-/2/

execute if score heaps:addr heaps matches 8 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[8].- set value 0b
execute if score heaps:addr heaps matches 9 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[9].- set value 0b
execute if score heaps:addr heaps matches 10 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[10].- set value 0b
execute if score heaps:addr heaps matches 11 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[11].- set value 0b
