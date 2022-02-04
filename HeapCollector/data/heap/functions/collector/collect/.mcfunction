#> heap:collector/collect/
#
# Performs full garbage collection.
#
# @internal

scoreboard players set heap:credit heap 2147483647
function heap:collector/count/do

# Sweep all the cells with `count` of 0 (1610612640 - 1610612640).
  data remove storage heap: _[]._[]._[]._[]._[]._[{_: {_count: 1610612640}}]._
