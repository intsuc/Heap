#> heap:core/touch/-/1/
#
# @within heap:core/touch/-/
#
# @input
#   score heap:addr heap

#>
# @within heap:core/touch/-/1/**
#declare score_holder heap:addr

execute store result storage heap: cache[1] int 1.0 run scoreboard players get heap:addr heap

data remove storage heap: _[{-: 0b}]._[].-
execute unless data storage heap: _[{-: 0b}]._ run data modify storage heap: _[{-: 0b}]._ set from storage heap.immutable: node

execute if score heap:addr heap matches ..3 run function heap:core/touch/-/1/0
execute if score heap:addr heap matches 4..7 run function heap:core/touch/-/1/1
execute if score heap:addr heap matches 8..11 run function heap:core/touch/-/1/2
execute if score heap:addr heap matches 12.. run function heap:core/touch/-/1/3
