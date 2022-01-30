#> heap:api/new
#
# Attempts to allocate a strong ref cell with `size`.
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

function heap:core/construct/new/
