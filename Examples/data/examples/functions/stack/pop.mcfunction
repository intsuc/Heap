#> examples:stack/pop
#
# Pops the element at the top of the stack referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the stack.
#
# @output
#   storage examples._: ret
#       element: any?
#           The popped element.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch/t

data remove storage examples._: ret.element
data modify storage examples._: ret.element set from storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.elements[-1]
data remove storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.elements[-1]