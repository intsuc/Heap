#> heaps:core/touch/s/
#
# @within heaps:api/touch/s
#
# @input
#   storage heaps._: in
#       addr: int

function heaps:core/touch/-/

#>
# @private
  #declare score_holder heaps:addr
  #declare score_holder heaps:cache

execute store result score heaps:addr heaps run data get storage heaps._: in.addr 1.0

execute store result score heaps:cache heaps run data get storage heaps: cache[4] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/s/0

execute store result score heaps:cache heaps run data get storage heaps: cache[5] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/s/1

execute store result score heaps:cache heaps run data get storage heaps: cache[6] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/s/2

execute store result score heaps:cache heaps run data get storage heaps: cache[7] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/s/3

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:cache heaps
