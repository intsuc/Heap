#> examples:stack/new
#
# Creates a stack.
#
# @public
#
# @input
#   storage examples._: in
#       weak: bool? = false
#
# @output
#   storage examples._: out
#       ptr: int?
#           The pointer to the stack.

data modify storage heap._: in set value {size: 1}
data modify storage heap._: in.weak set from storage examples._: in.weak
function heap:api/allocate

data modify storage heap._: in.ptr set from storage heap._: out.ptr
function heap:api/touch/t

data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.elements set value []

data modify storage examples._: out.ptr set from storage heap._: out.ptr
