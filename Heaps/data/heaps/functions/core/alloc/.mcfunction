#> heaps:core/alloc/
#
# @within heaps:api/alloc
#
# @input
#   storage heaps._: in
#       size: int
#       strong: unit?
#
# @output
#   storage heaps._: out
#       addr: int?

function heaps:core/find/
execute if data storage heaps._: out.addr run function heaps:core/alloc/do
