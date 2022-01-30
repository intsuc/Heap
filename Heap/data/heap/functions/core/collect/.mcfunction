#> heap:core/collect/
#
# @internal

#>
# @within heap:core/collect/**
#declare score_holder heap:count

execute if data storage heap.collector: link[0] run function heap:core/collect/link
execute if data storage heap.collector: unlink[0] run function heap:core/collect/unlink

scoreboard players reset heap:count heap

# Release all the cells with `count` of 0 (536870880 - 536870880).
data remove storage heap: _[]._[]._[]._[]._[]._[{_: {count: 536870880}}]._
