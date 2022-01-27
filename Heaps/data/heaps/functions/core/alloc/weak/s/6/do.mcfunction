#> heaps:core/alloc/weak/s/6/do
#
# @within heaps:core/alloc/weak/s/6/

#>
# @private
#declare score_holder heaps:addr
execute store result score heaps:addr heaps run data get storage heaps: out.addr 256.0

function heaps:core/touch/s/0/

#>
# @private
#declare score_holder heaps:node_size
execute store result score heaps:node_size heaps run data get storage heaps.immutable: node_size 1.0

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/1/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/2/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/3/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/4/

scoreboard players operation heaps:addr heaps *= heaps:node_size heaps
function heaps:core/touch/s/5/

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:node_size heaps
