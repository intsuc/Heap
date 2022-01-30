#> heap:api/touch/s
#
# Makes the cell referenced by `ptr` accessible by the source heap accessor.
#
# @api
#
# @input
#   storage heap._: in
#       ptr: int
#           The pointer to the cell to be touched.

function heap:core/touch_cell/s/
