#> examples:stack/push
#
# Pushes `element` onto the top of the stack referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the stack.
#       element: any
#           The element to be pushed.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch

data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.elements append from storage examples._: arg.element
