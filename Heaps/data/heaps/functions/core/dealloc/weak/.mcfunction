#> heaps:core/dealloc/weak/
#
# @within heaps:api/dealloc/weak
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/-/

data modify storage heaps.free: out append value [I; 0, 0]
data modify storage heaps.free: out[-1][0] set from storage heaps.temp: in.addr
data modify storage heaps.free: out[-1][1] set from storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].size
data modify storage heaps: [{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}

#>
# @private
#declare score_holder heaps:size
execute store result score heaps:size heaps run data get storage heaps.free: size 1.0

execute store result storage heaps.free: size int 1.0 run scoreboard players add heaps:size heaps 1

scoreboard players reset heaps:size heaps
