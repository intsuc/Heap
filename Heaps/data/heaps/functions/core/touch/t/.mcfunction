#> heaps:core/touch/t/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/-/

data remove storage heaps: _[].t
data modify storage heaps: _[{-: 0b}].t set value 0b

data remove storage heaps: _[{-: 0b}]._[].t
data modify storage heaps: _[{-: 0b}]._[{-: 0b}].t set value 0b

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[].t
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}].t set value 0b

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].t
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].t set value 0b
