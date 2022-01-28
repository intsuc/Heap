#> heaps:core/alloc/weak/
#
# @within heaps:api/alloc/weak
#
# @input
#   storage heaps._: in
#       size: int
#
# @output
#   storage heaps._: out
#       addr: int?

function heaps:core/find/
execute if data storage heaps._: out.addr run function heaps:core/alloc/weak/do
