#> heap:api/touch/t
#
# Makes the cell referenced by `ptr` accessible by the target heap accessor.
#
# @api
#
# @input
#   storage heap._: in
#       ptr: int
#           The pointer to the cell to be touched.

function heap:core/touch_cell/t/
