#> heap:core/unlink_cells/
#
# @within heap:api/unlink
#
# @input
#   storage heap._: in
#       source: int
#       targets: int_collection

data modify storage heap._: in.ptr set from storage heap._: in.source
function heap:core/touch_cell/-/
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.unlink append from storage heap._: in.targets[]

data modify storage heap.collector: unlink append from storage heap._: in.targets[]