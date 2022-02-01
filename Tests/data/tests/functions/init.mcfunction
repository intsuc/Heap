#> tests:init
#
# @within tests:run

summon minecraft:marker ~ ~ ~ {UUID: [I; 0, 0, 0, 0], CustomName: '""'}

data modify storage tests: status set value 0
