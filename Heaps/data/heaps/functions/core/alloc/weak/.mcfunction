#> heaps:core/alloc/weak/
#
# @within heaps:api/alloc/weak
#
# @input
#   storage heaps.temp: in
#       size: int
#
# @output
#   storage heaps.temp: out
#       addr: int?

function heaps:core/find/
execute if data storage heaps.temp: out.addr run function heaps:core/alloc/weak/do
