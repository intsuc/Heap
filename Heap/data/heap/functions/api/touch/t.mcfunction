#> heap:api/touch/t
#
# Makes the cell referenced by `ptr` accessible by the target heap accessor.
#
# @api
#
# @input
#   storage heap._: arg
#       ptr: int
#           The pointer to the cell to be touched.
#       add: bool? = false

function heap:core/touch_cell/t/
