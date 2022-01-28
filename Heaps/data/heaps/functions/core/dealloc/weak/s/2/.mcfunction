#> heaps:core/dealloc/weak/s/2/
#
# @within heaps:api/dealloc/weak/s/2
#
# @input
#   storage heaps: in
#       addr: int

function heaps:core/touch/s/2/

data remove storage heaps.free: ""[4]
data remove storage heaps.free: ""[3]

data modify storage heaps.free: ""[-3].out append value [I; 0, 0]
data modify storage heaps.free: ""[-3].out[-1][0] set from storage heaps: in.addr
data modify storage heaps.free: ""[-3].out[-1][1] set from storage heaps.vector: _[{s: 0b}]._[{s: 0b}].size
data remove storage heaps.vector: _[{s: 0b}]._[{s: 0b}].size

#>
# @private
#declare score_holder heaps:size
execute store result score heaps:size heaps run data get storage heaps.free: ""[-3].size 1.0

execute store result storage heaps.free: ""[-3].size int 1.0 run scoreboard players add heaps:size heaps 1

scoreboard players reset heaps:size heaps
