#> heap:core/dealloc/free/
#
# @within heap:api/free
#
# @input
#   storage heap._: in
#       addr: int

function heap:core/dealloc/

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}
