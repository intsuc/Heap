#> heap:api/alloc
#
# @api
#
# @input
#   storage heap._: in
#       size: int
#       root: unit?
#
# @output
#   storage heap._: out
#       addr: int?

function heap:core/construct/alloc/
