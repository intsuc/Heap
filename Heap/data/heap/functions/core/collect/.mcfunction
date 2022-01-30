#> heap:core/collect/
#
# Performs full garbage collection.
#
# @internal

data modify storage heap._: count_limit set from storage heap.config: count_limit
data modify storage heap.config: count_limit set value 2147483647
function heap:core/collect/count/
data modify storage heap.config: count_limit set from storage heap._: count_limit

# Sweep all the cells with `count` of 0 (1610612640 - 1610612640).
  data remove storage heap: _[]._[]._[]._[]._[]._[{_: {count: 1610612640}}]._
