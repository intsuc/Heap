#> heap:core/unlink_cells/do
#
# @within heap:core/unlink_cells/

data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._unlink append from storage heap._: arg.targets[]

data modify storage heap.collector: unlink append from storage heap._: arg.targets[]
