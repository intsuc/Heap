#> heap:init
#
# @within minecraft:tick

datapack disable "file/_Heap"

#>
# @public
#declare storage heap:
data modify storage heap: cache set value [I; -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]

#>
# @public
#declare storage heap._:

#>
# @internal
#declare storage heap.immutable:
data modify storage heap.immutable: node set value [{}, {}, {}, {}, {}, {}]

#>
# @internal
#declare storage heap.free_ring:
data modify storage heap.free_ring: aux set value []
data modify storage heap.free_ring: "" set value [[I; 0, 46656]]
data modify storage heap.free_ring: size set value 1

#>
# @internal
#declare storage heap.collector:
data modify storage heap.collector: link set value []
data modify storage heap.collector: unlink set value []

#>
# @internal
scoreboard objectives add heap dummy

say Initialized heap
