#> heap:core/find/fit
#
# @within heap:core/find/**

#>
# @private
  #declare score_holder heap:addr
  #declare score_holder heap:remaining

execute store result storage heap._: out.addr int 1.0 store result score heap:addr heap run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result storage heap.free_ring: ""[-1][0] int 1.0 run scoreboard players operation heap:addr heap += heap:required heap

scoreboard players operation heap:remaining heap = heap:available heap
execute store result storage heap.free_ring: ""[-1][1] int 1.0 run scoreboard players operation heap:remaining heap -= heap:required heap

scoreboard players reset heap:addr heap
scoreboard players reset heap:remaining heap
