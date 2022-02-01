#> heap:core/link_cells/do
#
# @within heap:core/link_cells/

data modify storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._.link append from storage heap._: arg.targets[]

data modify storage heap.collector: link append from storage heap._: arg.targets[]
