#> heap:core/allocate/ref/
#
# @within heap:api/allocate/ref
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       ptr: int?

function heap:core/find_free_cell/
execute if data storage heap._: out.ptr run function heap:core/allocate/ref/do
