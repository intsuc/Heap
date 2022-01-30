#> heap:core/allocate/do
#
# @within heap:core/allocate/

data modify storage heap._: cell set value {-: 0b}
data modify storage heap._: cell.size set from storage heap._: in.size
execute if data storage heap._: in{weak: true} run data modify storage heap._: cell.count set value 536870880

data modify storage heap._: in.ptr set from storage heap._: out.ptr
function heap:core/touch_cell/-/

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ set from storage heap._: cell
