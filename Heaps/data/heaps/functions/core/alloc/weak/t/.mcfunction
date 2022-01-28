#> heaps:core/alloc/weak/t/
#
# @within heaps:api/alloc/weak/t
#
# @input
#   storage heaps.temp: in
#       size: int
#
# @output
#   storage heaps.temp: out
#       addr: int?

function heaps:core/find/

data modify storage heaps.temp: in.addr set from storage heaps.temp: out.addr
execute if data storage heaps.temp: in.addr run function heaps:core/touch/t/

data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}].size set from storage heaps.temp: in.size
