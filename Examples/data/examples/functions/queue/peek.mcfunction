#> examples:queue/peek
#
# Peeks the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: in
#       ptr: int
#           The pointer to the queue.
#
# @output
#   storage examples._: out
#       element: any?
#           The top element of the queue.

function examples:queue/reverse/

data modify storage examples._: in.ptr set from storage examples._: out.out
function examples:stack/peek
