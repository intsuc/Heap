#> heaps:core/touch/t/
#
# @within heaps:api/touch/t
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

execute store result score heaps:cache heaps run data get storage heaps: cache[8] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/0

execute store result score heaps:cache heaps run data get storage heaps: cache[9] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/1

execute store result score heaps:cache heaps run data get storage heaps: cache[10] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/2

execute store result score heaps:cache heaps run data get storage heaps: cache[11] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/3

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:cache heaps
