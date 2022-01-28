#> heaps:core/touch/s/layer/3/0
#
# @within heaps:core/touch/s/layer/3/

execute if score heaps:addr heaps matches ..268435455 run data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[0].s set value 0b
execute if score heaps:addr heaps matches 268435456..536870911 run data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[1].s set value 0b
execute if score heaps:addr heaps matches 536870912..805306367 run data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[2].s set value 0b
execute if score heaps:addr heaps matches 805306368.. run data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[3].s set value 0b
