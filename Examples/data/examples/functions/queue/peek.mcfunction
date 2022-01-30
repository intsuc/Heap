#> examples:queue/peek
#
# Peeks the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the queue.
#
# @output
#   storage examples._: ret
#       element: any?
#           The top element of the queue.

function examples:queue/reverse/

data modify storage examples._: arg.ptr set from storage examples._: ret.out
function examples:stack/peek
