#> heaps:core/alloc/weak/s/
#
# @within heaps:api/alloc/weak/s
#
# @input
#   storage heaps: in
#       size: int
#
# @output
#   storage heaps: out
#       addr: int?

function heaps:core/find/

data modify storage heaps: in.addr set from storage heaps: out.addr
execute if data storage heaps: in.addr run function heaps:core/touch/s/

data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}].size set from storage heaps: in.size
