#> heaps:core/alloc/strong/do
#
# @within heaps:core/alloc/strong/

data modify storage heaps.temp: in.addr set from storage heaps.temp: out.addr
function heaps:core/touch/-/

data modify storage heaps.temp: cell set value {+: 0b}
data modify storage heaps.temp: cell.size set from storage heaps.temp: in.size
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set from storage heaps.temp: cell
