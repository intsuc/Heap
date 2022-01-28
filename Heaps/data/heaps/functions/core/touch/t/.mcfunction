#> heaps:core/touch/t/
#
# @input
#   storage heaps.temp: in
#       addr: int

#>
# @private
#declare score_holder heaps:addr
execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 65536.0

function heaps:core/touch/t/0/

#>
# @private
#declare score_holder heaps:node_size
execute store result score heaps:node_size heaps run data get storage heaps.immutable: node_size 1.0

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/t/1/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/t/2/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/t/3/

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:node_size heaps
