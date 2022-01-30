#> heap:api/weak
#
# Attempts to allocate a weak reference cell with `size`.
#
# @api
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       addr: int?

function heap:core/construct/weak/
