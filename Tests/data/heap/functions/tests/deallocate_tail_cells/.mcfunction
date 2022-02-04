#> heap:tests/deallocate_tail_cells/
#
# @within heap:tests

say deallocate_tail_cells

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

#>
# @private
#declare score_holder heap:ptr

execute store result score heap:ptr heap run data get storage heap._: ret.ptr 1.0
execute store result storage heap._: arg.ptr int 1.0 run scoreboard players add heap:ptr heap 1
function heap:api/touch

data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data set value "data"

execute store result storage heap._: arg.ptr int 1.0 run scoreboard players remove heap:ptr heap 1
function heap:api/deallocate

execute store result storage heap._: arg.ptr int 1.0 run scoreboard players add heap:ptr heap 1
function heap:api/touch

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data run function heap:fail

scoreboard players reset heap:ptr heap
