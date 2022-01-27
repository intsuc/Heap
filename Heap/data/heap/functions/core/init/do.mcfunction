#> heap:core/init/do
#
# @within heap:core/init/

#>
# @public
#declare storage heap:

#>
# @internal
#declare storage heap.vector:

#>
# @internal
#declare storage heap.immutable:
data modify storage heap.immutable: node set value [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]

#>
# @internal
#declare storage heap.free:
data modify storage heap.free: "" set value [{in: [], out: [[I; 0, 256]], size: 1}, {in: [], out: [[I; 0, 65536]], size: 1}, {in: [], out: [[I; 0, 16777216]], size: 1}]

#>
# @internal
scoreboard objectives add heap dummy

data modify storage heap.initialized: "" set value 0b
