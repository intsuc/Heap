#> heap:core/alloc/do
#
# @within heap:core/alloc/

data modify storage heap._: in.addr set from storage heap._: out.addr
function heap:core/touch/-/

data modify storage heap._: cell set value {-: 0b}
data modify storage heap._: cell.size set from storage heap._: in.size
execute if data storage heap._: in{root: true} run data modify storage heap._: cell.root set value 0b
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set from storage heap._: cell
