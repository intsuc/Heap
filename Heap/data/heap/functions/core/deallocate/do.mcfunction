#> heap:core/deallocate/do
#
# @within heap:core/deallocate/**

execute store result storage heap._: arg.ptr int 1.0 run scoreboard players add heap:ptr heap 1
function heap:core/touch_cell/internal/

data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}] set value {i: 0b}

scoreboard players remove heap:size heap 1
execute if score heap:size heap matches 2.. run function heap:core/deallocate/do
