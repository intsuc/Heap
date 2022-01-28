#> heaps:core/alloc/strong/
#
# @within heaps:api/alloc/strong
#
# @input
#   storage heaps.temp: in
#       size: int
#
# @output
#   storage heaps.temp: out
#       addr: int?

function heaps:core/find/
execute if data storage heaps.temp: out.addr run function heaps:core/alloc/strong/do
