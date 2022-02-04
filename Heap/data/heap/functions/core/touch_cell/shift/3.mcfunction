#> heap:core/touch_cell/shift/3
#
# @within heap:core/touch_cell/shift/

execute store result storage heap: cache_shift[3].offset int 1.0 run scoreboard players get heap:offset heap
data modify storage heap: cache_shift[{4: 0b}].offset set value -1

data remove storage heap: _[-6]._[-6]._[-6]._[{+: 0b}]
execute unless data storage heap: _[-6]._[-6]._[-6]._ run data modify storage heap: _[-6]._[-6]._[-6]._ set value [{}, {}, {}, {}, {}, {}]

execute if score heap:offset heap matches 1 run data modify storage heap: _[-6]._[-6]._[-6]._ append value {+: 0b}
execute if score heap:offset heap matches 2 run data modify storage heap: _[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes2[]
execute if score heap:offset heap matches 3 run data modify storage heap: _[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes3[]
execute if score heap:offset heap matches 4 run data modify storage heap: _[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes4[]
execute if score heap:offset heap matches 5 run data modify storage heap: _[-6]._[-6]._[-6]._ append from storage heap.immutable: nodes5[]
