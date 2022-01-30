#> heap:core/link_cells/do
#
# @within heap:core/link_cells/
#
# @context
#   -
#       The pointer to the source.

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.link append from storage heap._: arg.targets[]

data modify storage heap.collector: link append from storage heap._: arg.targets[]
