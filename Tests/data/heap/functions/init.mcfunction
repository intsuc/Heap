#> heap:init
#
# @within heap:run

summon minecraft:marker ~ ~ ~ {UUID: [I; 0, 0, 0, 0], CustomName: '""'}

data modify storage heap.tests: status set value 0

scoreboard objectives add heap.tests dummy
