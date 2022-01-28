#> heaps:core/dealloc/
#
# @within heaps:api/dealloc
#
# @input
#   storage heaps.temp: in
#       addr: int

#>
# @within heaps:core/dealloc/**
  #declare score_holder heaps:addr
  #declare score_holder heaps:size
  #declare score_holder heaps:end
  #declare score_holder heaps:addr_top
  #declare score_holder heaps:size_top
  #declare score_holder heaps:end_top

function heaps:core/touch/-/

execute store result score heaps:addr heaps store result score heaps:end heaps run data get storage heaps.temp: in.addr 1.0
execute store result score heaps:size heaps run data get storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].size 1.0
scoreboard players operation heaps:end heaps += heaps:size heaps
execute store result score heaps:addr_top heaps store result score heaps:end_top heaps run data get storage heaps.free: out[-1][0] 1.0
execute store result score heaps:size_top heaps run data get storage heaps.free: out[-1][1] 1.0
scoreboard players operation heaps:end_top heaps += heaps:size_top heaps

execute if score heaps:end heaps = heaps:addr_top heaps run function heaps:core/dealloc/merge_front
execute if score heaps:end_top heaps = heaps:addr heaps store result storage heaps.free: out[-1][1] int 1.0 run scoreboard players operation heaps:size heaps += heaps:size_top heaps
execute unless score heaps:end heaps = heaps:addr_top heaps unless score heaps:end_top heaps = heaps:addr heaps run function heaps:core/dealloc/append

data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}

scoreboard players reset heaps:addr heaps
scoreboard players reset heaps:size heaps
scoreboard players reset heaps:end heaps
scoreboard players reset heaps:addr_top heaps
scoreboard players reset heaps:size_top heaps
scoreboard players reset heaps:end_top heaps
