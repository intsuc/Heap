#> heaps:core/touch/-/2/3
#
# @within heaps:core/touch/-/2/

execute if score heaps:addr heaps matches 12 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[12].- set value 0b
execute if score heaps:addr heaps matches 13 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[13].- set value 0b
execute if score heaps:addr heaps matches 14 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[14].- set value 0b
execute if score heaps:addr heaps matches 15 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[15].- set value 0b
