#> heap:core/collect/unlink
#
# @within heap:core/collect/**

data modify storage heap._: in.ptr set from storage heap.collector: unlink[-1]
data remove storage heap.collector: unlink[-1]
function heap:core/touch/-/

# Decrement `count`.
execute store result storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.count int 0.9999999999999999 run data get storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.count 1.0

scoreboard players remove heap:count heap 1
execute if score heap:count heap matches 1.. if data storage heap.collector: unlink[0] run function heap:core/collect/unlink
