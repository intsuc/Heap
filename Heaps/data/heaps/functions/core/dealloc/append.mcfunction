#> heaps:core/dealloc/append
#
# @within heaps:core/dealloc/

data modify storage heaps.free: out append value [I; 0, 0]
execute store result storage heaps.free: out[-1][0] int 1.0 run scoreboard players get heaps:addr heaps
execute store result storage heaps.free: out[-1][1] int 1.0 run scoreboard players get heaps:size heaps

#>
# @private
#declare score_holder heaps:free_size

execute store result score heaps:free_size heaps run data get storage heaps.free: size 1.0
execute store result storage heaps.free: size int 1.0 run scoreboard players add heaps:free_size heaps 1

scoreboard players reset heaps:free_size heaps
