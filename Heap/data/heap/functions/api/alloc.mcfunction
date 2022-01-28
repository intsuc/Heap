#> heap:api/alloc
#
# @api
#
# @input
#   storage heap._: in
#       size: int
#       strong: unit?
#
# @output
#   storage heap._: out
#       addr: int?

function heap:core/alloc/
