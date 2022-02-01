#> heap:core/touch_cell/internal/0
#
# @within heap:core/touch_cell/internal/

execute store result storage heap: cache[0] int 1.0 run scoreboard players get heap:ptr heap

data remove storage heap: _[].i
execute unless data storage heap: _ run data modify storage heap: _ set value [{}, {}, {}, {}, {}, {}]

execute if score heap:ptr heap matches 0 run data modify storage heap: _[0].i set value 0b
execute if score heap:ptr heap matches 1 run data modify storage heap: _[1].i set value 0b
execute if score heap:ptr heap matches 2 run data modify storage heap: _[2].i set value 0b
execute if score heap:ptr heap matches 3 run data modify storage heap: _[3].i set value 0b
execute if score heap:ptr heap matches 4 run data modify storage heap: _[4].i set value 0b
execute if score heap:ptr heap matches 5 run data modify storage heap: _[5].i set value 0b
