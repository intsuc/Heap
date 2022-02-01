#> examples:array/touch
#
# @within examples:array/**
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the array.
#       index: int
#           The index.

scoreboard objectives add examples dummy

#>
# @private
#declare score_holder examples:ptr
#declare score_holder examples:index

execute store result score examples:ptr examples run data get storage examples._: arg.ptr 1.0
execute store result score examples:index examples run data get storage examples._: arg.index 1.0

execute store result storage heap._: arg.ptr int 1.0 run scoreboard players operation examples:ptr examples += examples:index examples
function heap:api/touch/

scoreboard players reset examples:ptr examples
scoreboard players reset examples:index examples

scoreboard objectives remove examples
