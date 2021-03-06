#> examples:queue/enqueue
#
# Enqueues `element` to the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the queue.
#       element: any
#           The element to be enqueued.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch

data modify storage examples._: arg.ptr set from storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.stacks.in
function examples:stack/push
