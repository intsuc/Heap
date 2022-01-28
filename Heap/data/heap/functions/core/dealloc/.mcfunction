#> heap:core/dealloc/
#
# @within heap:api/dealloc
#
# @input
#   storage heap._: in
#       addr: int

#>
# @within heap:core/dealloc/**
  #declare score_holder heap:addr
  #declare score_holder heap:size
  #declare score_holder heap:end
  #declare score_holder heap:addr_top
  #declare score_holder heap:size_top
  #declare score_holder heap:end_top

function heap:core/touch/-/

execute store result score heap:addr heap store result score heap:end heap run data get storage heap._: in.addr 1.0
execute store result score heap:size heap run data get storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].size 1.0
scoreboard players operation heap:end heap += heap:size heap
execute store result score heap:addr_top heap store result score heap:end_top heap run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result score heap:size_top heap run data get storage heap.free_ring: ""[-1][1] 1.0
scoreboard players operation heap:end_top heap += heap:size_top heap

execute if score heap:end heap = heap:addr_top heap run function heap:core/dealloc/merge_front
execute if score heap:end_top heap = heap:addr heap store result storage heap.free_ring: ""[-1][1] int 1.0 run scoreboard players operation heap:size heap += heap:size_top heap
execute unless score heap:end heap = heap:addr_top heap unless score heap:end_top heap = heap:addr heap run function heap:core/dealloc/append

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}

scoreboard players reset heap:addr heap
scoreboard players reset heap:size heap
scoreboard players reset heap:end heap
scoreboard players reset heap:addr_top heap
scoreboard players reset heap:size_top heap
scoreboard players reset heap:end_top heap
