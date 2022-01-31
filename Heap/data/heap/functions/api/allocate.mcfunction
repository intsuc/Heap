#> heap:api/allocate
#
# Attempts to allocate a cell with `size`.
# If `weak`, the cell will be weak.
# Returns the pointer to the cell as `ptr` if the allocation succeeds.
#
# @api
#
# @input
#   storage heap._: arg
#       size: int = 1
#           The size of the cell to be allocated.
#       weak: bool? = false
#
# @output
#   storage heap._: ret
#       ptr: int?
#           The pointer to the allocated cell.

function heap:core/allocate/
