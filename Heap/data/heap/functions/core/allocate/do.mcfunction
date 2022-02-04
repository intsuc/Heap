#> heap:core/allocate/do
#
# @within heap:core/allocate/

#>
# @private
  #declare score_holder heap:occupied
  #declare score_holder heap:size

execute store result score heap:occupied heap run data get storage heap: free 1.0
execute store result score heap:size heap run data get storage heap._: arg.size 1.0

execute store result storage heap: occupied int 1.0 run scoreboard players operation heap:occupied heap += heap:size heap

scoreboard players reset heap:occupied heap
scoreboard players reset heap:size heap

data modify storage heap._: cell set value {i: 0b}
data modify storage heap._: cell._._size set from storage heap._: arg.size

# If `weak`, set `count` to 0 (1610612640 - 1610612640).
  execute if data storage heap._: arg{weak: true} run data modify storage heap._: cell._._count set value 1610612640

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:core/touch_cell/internal/

data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}] set from storage heap._: cell
