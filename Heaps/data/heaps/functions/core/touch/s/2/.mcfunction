#> heaps:core/touch/s/2/
#
# @input
#   storage heaps: in
#       addr: int

#>
# @private
#declare score_holder heaps:addr
execute store result score heaps:addr heaps run data get storage heaps: in.addr 16777216.0

function heaps:core/touch/s/layer/0/

#>
# @private
#declare score_holder heaps:node_size
execute store result score heaps:node_size heaps run data get storage heaps.immutable: node_size 1.0

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/layer/1/

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:node_size heaps
