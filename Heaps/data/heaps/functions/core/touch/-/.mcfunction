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
  #declare score_holder heaps:cache
  #declare score_holder heaps:node_size

scoreboard players set heaps:node_size heaps 16
execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.000244140625
execute store result score heaps:cache heaps run data get storage heaps: cache[0] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/-/0/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.00390625
scoreboard players operation heaps:addr heaps %= heaps:node_size heaps
execute store result score heaps:cache heaps run data get storage heaps: cache[1] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/-/1/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 0.0625
scoreboard players operation heaps:addr heaps %= heaps:node_size heaps
execute store result score heaps:cache heaps run data get storage heaps: cache[2] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/-/2/

execute store result score heaps:addr heaps run data get storage heaps.temp: in.addr 1.0
scoreboard players operation heaps:addr heaps %= heaps:node_size heaps
execute store result score heaps:cache heaps run data get storage heaps: cache[3] 1.0
execute unless score heaps:addr heaps = heaps:cache heaps run function heaps:core/touch/-/3/

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:cache heaps
scoreboard players reset heaps:node_size heaps
