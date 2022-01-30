#> examples:queue/drop
#
# Drops the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: in
#       ptr: int
#           The pointer to the queue.

data modify storage heap._: in.ptr set from storage examples._: in.ptr
function heap:api/deallocate

say Dropped queue
