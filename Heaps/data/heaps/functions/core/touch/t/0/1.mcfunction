#> heaps:core/touch/t/0/1
#
# @within heaps:core/touch/t/0/

execute if score heaps:addr heaps matches ..1342177279 run data modify storage heaps: _[4].t set value 0b
execute if score heaps:addr heaps matches 1342177280..1610612735 run data modify storage heaps: _[5].t set value 0b
execute if score heaps:addr heaps matches 1610612736..1879048191 run data modify storage heaps: _[6].t set value 0b
execute if score heaps:addr heaps matches 1879048192.. run data modify storage heaps: _[7].t set value 0b
