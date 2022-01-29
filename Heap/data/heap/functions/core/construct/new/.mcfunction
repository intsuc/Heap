#> heap:core/construct/new/
#
# @within heap:api/new
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       addr: int?

function heap:core/find/
execute if data storage heap._: out.addr run function heap:core/construct/new/do
