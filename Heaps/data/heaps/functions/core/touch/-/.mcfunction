#> heaps:core/touch/-/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

#>
# @private
#declare score_holder heaps:addr

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.000244140625
function heaps:core/touch/-/0/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.00390625
#>
# @private
#declare score_holder heaps:2⁴
scoreboard players set heaps:2⁴ heaps 16
scoreboard players operation heaps:addr heaps %= heaps:2⁴ heaps
function heaps:core/touch/-/1/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.0625
scoreboard players operation heaps:addr heaps %= heaps:2⁴ heaps
function heaps:core/touch/-/2/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 1.0
scoreboard players operation heaps:addr heaps %= heaps:2⁴ heaps
scoreboard players reset heaps:2⁴ heaps
function heaps:core/touch/-/3/

scoreboard players reset heaps:addr heaps
