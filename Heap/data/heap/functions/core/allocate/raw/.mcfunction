#> heap:core/allocate/raw/
#
# @within heap:api/allocate/raw
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       ptr: int?

function heap:core/find_free_cell/
execute if data storage heap._: out.ptr run function heap:core/allocate/raw/do
