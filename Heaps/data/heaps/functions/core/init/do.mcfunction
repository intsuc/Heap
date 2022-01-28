#> heaps:core/init/do
#
# @within heaps:core/init/

#>
# @public
#declare storage heaps:

#>
# @internal
#declare storage heaps.vector:

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

data modify storage heaps.initialized: "" set value 0b
