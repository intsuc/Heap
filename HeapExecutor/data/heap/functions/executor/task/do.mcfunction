#> heap:executor/task/do
#
# @within heap:executor/task/**

function #heap:executor/task

scoreboard players remove heap:credit heap 1
execute if score heap:credit heap matches 1.. run function heap:executor/task/do
