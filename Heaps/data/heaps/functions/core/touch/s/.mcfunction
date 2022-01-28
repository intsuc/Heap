#> heaps:core/touch/s/
#
# @internal
#
# @input
#   storage heaps.temp: in
#       addr: int

function heaps:core/touch/t/

data remove storage heaps: _[].s
data modify storage heaps: _[{t: 0b}].s set value 0b

data remove storage heaps: _[{t: 0b}]._[].s
data modify storage heaps: _[{t: 0b}]._[{t: 0b}].s set value 0b

data remove storage heaps: _[{t: 0b}]._[{t: 0b}]._[].s
data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}].s set value 0b

data remove storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[].s
data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}].s set value 0b
