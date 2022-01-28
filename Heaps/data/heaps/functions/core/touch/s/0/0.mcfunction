#> heaps:core/touch/s/0/0
#
# @within heaps:core/touch/s/0/

execute if score heaps:addr heaps matches ..268435455 run data modify storage heaps: _[0].s set value 0b
execute if score heaps:addr heaps matches 268435456..536870911 run data modify storage heaps: _[1].s set value 0b
execute if score heaps:addr heaps matches 536870912..805306367 run data modify storage heaps: _[2].s set value 0b
execute if score heaps:addr heaps matches 805306368.. run data modify storage heaps: _[3].s set value 0b
