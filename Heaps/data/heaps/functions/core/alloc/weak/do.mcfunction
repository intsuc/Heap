#> heaps:core/alloc/weak/do
#
# @within heaps:core/alloc/weak/

data modify storage heaps.temp: in.addr set from storage heaps.temp: out.addr
function heaps:core/touch/-/

data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].size set from storage heaps.temp: in.size
