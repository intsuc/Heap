#> heaps:core/alloc/weak/s/
#
# @within heaps:api/alloc/weak/s
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
execute if data storage heaps.temp: in.addr run function heaps:core/touch/s/

data modify storage heaps: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}].size set from storage heaps.temp: in.size
