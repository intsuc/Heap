#> heap:core/collect/link
#
# @within heap:core/collect/**

data modify storage heap._: in.addr set from storage heap.collector: link[-1]
data remove storage heap.collector: link[-1]
function heap:core/touch/-/

# Increment `count`.
execute store result storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.count int 1.0000000009313226 run data get storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.count 1.0

execute if data storage heap.collector: link[0] run function heap:core/collect/link
