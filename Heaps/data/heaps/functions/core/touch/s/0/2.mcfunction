#> heaps:core/touch/s/0/2
#
# @within heaps:core/touch/s/0/

execute if score heaps:addr heaps matches ..-1879048193 run data modify storage heaps: _[8].s set value 0b
execute if score heaps:addr heaps matches -1879048192..-1610612737 run data modify storage heaps: _[9].s set value 0b
execute if score heaps:addr heaps matches -1610612736..-1342177281 run data modify storage heaps: _[10].s set value 0b
execute if score heaps:addr heaps matches -1342177280.. run data modify storage heaps: _[11].s set value 0b
