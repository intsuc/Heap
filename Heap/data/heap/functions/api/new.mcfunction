#> heap:api/new
#
# Attempts to allocate a strong ref cell with `size`.
#
# @api
#
# @input
#   storage heap._: in
#       size: int
#           The size of the cell to be allocated.
#
# @output
#   storage heap._: out
#       ptr: int?
#           The pointer to the allocated cell.

function heap:core/construct/new/
