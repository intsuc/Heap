#> heap:core/allocate/
#
# @within heap:api/allocate
#
# @input
#   storage heap._: in
#       size: int
#       weak: bool? = false
#
# @output
#   storage heap._: out
#       ptr: int?

function heap:core/find_free_cell/
execute if data storage heap._: out.ptr run function heap:core/allocate/do
