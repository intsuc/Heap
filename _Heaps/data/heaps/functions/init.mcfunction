#> heaps:init
#
# @within minecraft:tick

datapack disable "file/_Heaps"

#>
# @public
#declare storage heaps:

#>
# @public
#declare storage heaps.temp:

#>
# @internal
#declare storage heaps.immutable:
data modify storage heaps.immutable: node_size set value 16
data modify storage heaps.immutable: node set value [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]

#>
# @internal
#declare storage heaps.free:
data modify storage heaps.free: in set value []
data modify storage heaps.free: out set value [[I; 0, 65536]]
data modify storage heaps.free: size set value 1

#>
# @internal
scoreboard objectives add heaps dummy
