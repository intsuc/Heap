#> heap:api/weak
#
# Attempts to allocate a weak ref cell with `size`.
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

function heap:core/construct/weak/
