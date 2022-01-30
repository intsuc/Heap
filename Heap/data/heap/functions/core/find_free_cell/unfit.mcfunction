#> heap:core/find_free_cell/unfit
#
# @within heap:core/find_free_cell/**

function heap:core/free_ring/next

scoreboard players remove heap:count heap 1
execute if score heap:count heap matches 536870881.. run function heap:core/find_free_cell/check
