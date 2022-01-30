#> heap:api/dealloc
#
# Deallocates the raw cell referenced by `ptr`.
#
# @api
#
# @input
#   storage heap._: in
#       ptr: int
#           The pointer to the cell to be deallocated.

function heap:core/destruct/dealloc/
