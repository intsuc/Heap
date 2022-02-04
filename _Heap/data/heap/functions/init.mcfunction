#> heap:init
#
# Initializes the heap.
#
# @within minecraft:tick

# Disable this datapack to reduce footprint and to avoid accidental reinitialization.
  datapack disable "file/_Heap.zip"

#>
# @public
#declare storage heap:
  # The cache of the last accessed offset.
    data modify storage heap: cache_internal set value [{offset: -1}, {offset: -1, 1: 0b}, {offset: -1, 1: 0b, 2: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}]
    data modify storage heap: cache_shift set value [{offset: -1}, {offset: -1, 1: 0b}, {offset: -1, 1: 0b, 2: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}]
    data modify storage heap: cache_target set value [{offset: -1}, {offset: -1, 1: 0b}, {offset: -1, 1: 0b, 2: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}]
    data modify storage heap: cache_source set value [{offset: -1}, {offset: -1, 1: 0b}, {offset: -1, 1: 0b, 2: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}, {offset: -1, 1: 0b, 2: 0b, 3: 0b, 4: 0b}]
  # The number of occupied cells.
    data modify storage heap: occupied set value 0

#>
# @public
#declare storage heap._:

#>
# @internal
#declare storage heap.immutable:
  data modify storage heap.immutable: nodes2 set value [{+: 0b}, {+: 0b}]
  data modify storage heap.immutable: nodes3 set value [{+: 0b}, {+: 0b}, {+: 0b}]
  data modify storage heap.immutable: nodes4 set value [{+: 0b}, {+: 0b}, {+: 0b}, {+: 0b}]
  data modify storage heap.immutable: nodes5 set value [{+: 0b}, {+: 0b}, {+: 0b}, {+: 0b}, {+: 0b}]

#>
# @public
#declare storage heap.config:
  data modify storage heap.config: count_limit set value 1
  data modify storage heap.config: defrag_limit set value 1
  data modify storage heap.config: collect_threshold set value 34992

#>
# @internal
#declare storage heap.free_ring:
  data modify storage heap.free_ring: aux set value []
  data modify storage heap.free_ring: "" set value [[I; 0, 46656]]
  data modify storage heap.free_ring: size set value 1610612641

#>
# @internal
#declare storage heap.collector:
  data modify storage heap.collector: link set value []
  data modify storage heap.collector: unlink set value []

#>
# @internal
  scoreboard objectives add heap dummy

say Initialized heap
