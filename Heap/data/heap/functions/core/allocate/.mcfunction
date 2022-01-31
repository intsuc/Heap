#> heap:core/allocate/
#
# @within heap:api/allocate
#
# @input
#   storage heap._: arg
#       size: int? = 1
#       weak: bool? = false
#
# @output
#   storage heap._: ret
#       ptr: int?

execute unless data storage heap._: arg.size run data modify storage heap._: arg.size set value 1
function heap:core/find_free_cell/

# If a free cell is found, perform the allocation.
  execute if data storage heap._: ret.ptr run function heap:core/allocate/do
