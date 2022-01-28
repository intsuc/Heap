#> heap:init
#
# @within minecraft:tick

datapack disable "file/_Heap"

#>
# @public
#declare storage heap:
data modify storage heap: cache set value [B; -1b, -1b, -1b, -1b, -1b, -1b, -1b, -1b, -1b, -1b, -1b, -1b]

#>
# @public
#declare storage heap._:

#>
# @internal
#declare storage heap.immutable:
data modify storage heap.immutable: node set value [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]

#>
# @internal
#declare storage heap.free:
data modify storage heap.free: in set value []
data modify storage heap.free: out set value [[I; 0, 65536]]
data modify storage heap.free: size set value 1

#>
# @internal
scoreboard objectives add heap dummy
