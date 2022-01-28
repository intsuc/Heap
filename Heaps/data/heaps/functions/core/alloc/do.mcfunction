#> heaps:core/alloc/do
#
# @within heaps:core/alloc/

data modify storage heaps._: in.addr set from storage heaps._: out.addr
function heaps:core/touch/-/

data modify storage heaps._: cell set value {-: 0b}
data modify storage heaps._: cell.size set from storage heaps._: in.size
data modify storage heaps._: cell.strong set from storage heaps._: in.strong
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set from storage heaps._: cell
