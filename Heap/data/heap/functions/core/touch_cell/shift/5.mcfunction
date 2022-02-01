#> heap:core/touch_cell/shift/5
#
# @within heap:core/touch_cell/shift/

execute store result storage heap: cache[11] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[{+: 0b}]
execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ set value [{}, {}, {}, {}, {}, {}]

execute if score heap:ptr heap matches 1 run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ append value {+: 0b}
execute if score heap:ptr heap matches 2 run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes2[]
execute if score heap:ptr heap matches 3 run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes3[]
execute if score heap:ptr heap matches 4 run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes4[]
execute if score heap:ptr heap matches 5 run data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes5[]
