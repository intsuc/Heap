#> heap:core/find/unfit
#
# @within heap:core/find/**

function heap:core/free_ring/next

scoreboard players remove heap:count heap 1
execute if score heap:count heap matches 1.. run function heap:core/find/check
