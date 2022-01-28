#> heaps:core/touch/s/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/_/

data remove storage heaps: _[].s
data modify storage heaps: _[{_: 0b}].s set value 0b

data remove storage heaps: _[{_: 0b}]._[].s
data modify storage heaps: _[{_: 0b}]._[{_: 0b}].s set value 0b

data remove storage heaps: _[{_: 0b}]._[{_: 0b}]._[].s
data modify storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}].s set value 0b

data remove storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}]._[].s
data modify storage heaps: _[{_: 0b}]._[{_: 0b}]._[{_: 0b}]._[{_: 0b}].s set value 0b
