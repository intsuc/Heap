#> heaps:core/touch/t/1/2
#
# @within heaps:core/touch/t/1/

execute if score heaps:addr heaps matches ..-1879048193 run data modify storage heaps: _[{t: 0b}]._[8].t set value 0b
execute if score heaps:addr heaps matches -1879048192..-1610612737 run data modify storage heaps: _[{t: 0b}]._[9].t set value 0b
execute if score heaps:addr heaps matches -1610612736..-1342177281 run data modify storage heaps: _[{t: 0b}]._[10].t set value 0b
execute if score heaps:addr heaps matches -1342177280.. run data modify storage heaps: _[{t: 0b}]._[11].t set value 0b
