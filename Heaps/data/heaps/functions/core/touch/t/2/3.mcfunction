#> heaps:core/touch/t/2/3
#
# @within heaps:core/touch/t/2/

execute if score heaps:addr heaps matches ..-805306369 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[12].t set value 0b
execute if score heaps:addr heaps matches -805306368..-536870913 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[13].t set value 0b
execute if score heaps:addr heaps matches -536870912..-268435457 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[14].t set value 0b
execute if score heaps:addr heaps matches -268435456.. run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[15].t set value 0b
