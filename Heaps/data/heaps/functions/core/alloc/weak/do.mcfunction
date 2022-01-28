#> heaps:core/alloc/weak/do
#
# @within heaps:core/alloc/weak/

data modify storage heaps._: in.addr set from storage heaps._: out.addr
function heaps:core/touch/-/

data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].size set from storage heaps._: in.size
