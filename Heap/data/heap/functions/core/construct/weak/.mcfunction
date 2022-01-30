#> heap:core/construct/weak/
#
# @within heap:api/weak
#
# @input
#   storage heap._: in
#       size: int
#
# @output
#   storage heap._: out
#       ptr: int?

function heap:core/find_free_cell/
execute if data storage heap._: out.ptr run function heap:core/construct/weak/do
