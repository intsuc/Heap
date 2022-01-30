#> heap:init
#
# Initializes the heap.
#
# @within minecraft:tick

# Disable this datapack to reduce footprint and to avoid accidental reinitialization.
  datapack disable "file/_Heap"

#>
# @public
#declare storage heap:
  # The cache of the last accessed offset.    | Cache of -            | Cache of s            | Cache of t            |
  data modify storage heap: cache set value [I; -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]

#>
# @public
#declare storage heap._:

#>
# @public
#declare storage heap.config:
  data modify storage heap.config: count_limit set value 1

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
