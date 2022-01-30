#> heap:core/destruct/dealloc/
#
# @within heap:api/dealloc
#
# @input
#   storage heap._: in
#       ptr: int

function heap:core/destruct/

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set value {-: 0b}
