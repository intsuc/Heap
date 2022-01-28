#> heaps:core/touch/s/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/-/

data remove storage heaps: _[].s
data modify storage heaps: _[{-: 0b}].s set value 0b

data remove storage heaps: _[{-: 0b}]._[].s
data modify storage heaps: _[{-: 0b}]._[{-: 0b}].s set value 0b

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[].s
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}].s set value 0b

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].s
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].s set value 0b
