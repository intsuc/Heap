#> heaps:core/touch/t/3/1
#
# @within heaps:core/touch/t/3/

execute if score heaps:addr heaps matches ..1342177279 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[4].t set value 0b
execute if score heaps:addr heaps matches 1342177280..1610612735 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[5].t set value 0b
execute if score heaps:addr heaps matches 1610612736..1879048191 run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[6].t set value 0b
execute if score heaps:addr heaps matches 1879048192.. run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[7].t set value 0b
