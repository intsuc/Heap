#> heaps:core/touch/t/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/-/

#>
# @private
  #declare score_holder heaps:addr
  #declare score_holder heaps:cache

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 1.0

execute store result score heaps:cache heaps run data get storage heaps: cache_t[0] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/0

execute store result score heaps:cache heaps run data get storage heaps: cache_t[1] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/1

execute store result score heaps:cache heaps run data get storage heaps: cache_t[2] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/2

execute store result score heaps:cache heaps run data get storage heaps: cache_t[3] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/t/3

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:cache heaps