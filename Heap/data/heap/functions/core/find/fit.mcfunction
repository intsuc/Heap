#> heap:core/find/fit
#
# @within heap:core/find/**

#>
# @private
  #declare score_holder heap:ptr
  #declare score_holder heap:remaining

execute store result storage heap._: out.ptr int 1.0 store result score heap:ptr heap run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result storage heap.free_ring: ""[-1][0] int 1.0 run scoreboard players operation heap:ptr heap += heap:required heap

scoreboard players operation heap:remaining heap = heap:available heap
execute store result storage heap.free_ring: ""[-1][1] int 1.0 run scoreboard players operation heap:remaining heap -= heap:required heap

scoreboard players reset heap:ptr heap
scoreboard players reset heap:remaining heap
