#> heap:core/alloc/
#
# @within heap:api/alloc
#
# @input
#   storage heap._: in
#       size: int
#       root: unit?
#
# @output
#   storage heap._: out
#       addr: int?

function heap:core/find/
execute if data storage heap._: out.addr run function heap:core/alloc/do
