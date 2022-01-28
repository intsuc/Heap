#> heap:core/touch/-/0/
#
# @within heap:core/touch/-/
#
# @input
#   score heap:addr heap

#>
# @within heap:core/touch/-/0/**
#declare score_holder heap:addr

execute store result storage heap: cache[0] int 1.0 run scoreboard players get heap:addr heap

data remove storage heap: _[].-
execute unless data storage heap: _ run data modify storage heap: _ set from storage heap.immutable: node

execute if score heap:addr heap matches ..3 run function heap:core/touch/-/0/0
execute if score heap:addr heap matches 4..7 run function heap:core/touch/-/0/1
execute if score heap:addr heap matches 8..11 run function heap:core/touch/-/0/2
execute if score heap:addr heap matches 12.. run function heap:core/touch/-/0/3
