#> heaps:core/touch/t/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/_/

data remove storage heaps: _[].t
data modify storage heaps: _[{_: 0b}].t set value 0b

data remove storage heaps: _[{_: 0b}]._[].t
data modify storage heaps: _[{_: 0b}]._[{_: 0b}].t set value 0b

data remove storage heaps: _[{_: 0b}]._[{_: 0b}]._[].t
data modify storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}].t set value 0b

data remove storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}]._[].t
data modify storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}]._[{_: 0b}].t set value 0b
