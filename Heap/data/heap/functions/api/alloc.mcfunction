#> heap:api/alloc
#
# Attempts to allocate a raw cell with `size`.
#
# @api
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       ptr: int?

function heap:core/construct/alloc/
