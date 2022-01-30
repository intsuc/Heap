#> heap:api/new
#
# Attempts to allocate a strong reference cell with `size`.
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

function heap:core/construct/new/
