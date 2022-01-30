#> heap:core/allocate/
#
# @within heap:api/allocate
#
# @input
#   storage heap._: arg
#       size: int
#       weak: bool? = false
#
# @output
#   storage heap._: ret
#       ptr: int?

function heap:core/find_free_cell/

# If a free cell is found, perform the allocation.
  execute if data storage heap._: ret.ptr run function heap:core/allocate/do
