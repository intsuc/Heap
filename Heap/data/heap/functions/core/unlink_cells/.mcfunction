#> heap:core/unlink_cells/
#
# @within heap:api/unlink
#
# @input
#   storage heap._: arg
#       source: int
#       targets: int_collection

data modify storage heap._: arg.ptr set from storage heap._: arg.source
function heap:core/touch_cell/internal/
data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._unlink append from storage heap._: arg.targets[]

data modify storage heap.collector: unlink append from storage heap._: arg.targets[]
