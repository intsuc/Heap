#> tests:init
#
# @within minecraft:load

summon minecraft:marker ~ ~ ~ {UUID: [I; 0, 0, 0, 0], CustomName: '""'}

data modify storage tests: status set value 1
