#> heap:api/touch
#
# Makes the cell referenced by `ptr` accessible by the main heap accessor.
#
# @api
#
# @input
#   storage heap._: arg
#       ptr: int
#           The pointer to the cell to be touched.

function heap:core/touch_cell/shift/
