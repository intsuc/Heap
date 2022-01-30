#> examples:queue/drop
#
# Drops the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the queue.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/deallocate

say Dropped queue
