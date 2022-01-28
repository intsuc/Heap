#> heaps:core/touch/t/1/0
#
# @within heaps:core/touch/t/1/

execute if score heaps:addr heaps matches ..268435455 run data modify storage heaps: _[{t: 0b}]._[0].t set value 0b
execute if score heaps:addr heaps matches 268435456..536870911 run data modify storage heaps: _[{t: 0b}]._[1].t set value 0b
execute if score heaps:addr heaps matches 536870912..805306367 run data modify storage heaps: _[{t: 0b}]._[2].t set value 0b
execute if score heaps:addr heaps matches 805306368.. run data modify storage heaps: _[{t: 0b}]._[3].t set value 0b
