#> heaps:core/touch/-/3/1
#
# @within heaps:core/touch/-/3/

execute if score heaps:addr heaps matches 4 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[4].- set value 0b
execute if score heaps:addr heaps matches 5 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[5].- set value 0b
execute if score heaps:addr heaps matches 6 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[6].- set value 0b
execute if score heaps:addr heaps matches 7 run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[7].- set value 0b
