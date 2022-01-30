#> heap:api/allocate
#
# Attempts to allocate a memory cell with `size`.
#
# @api
#
# @input
#   storage heap._: arg
#       size: int
#           The size of the cell to be allocated.
#       weak: bool?
#
# @output
#   storage heap._: ret
#       ptr: int?
#           The pointer to the allocated cell.

function heap:core/allocate/
