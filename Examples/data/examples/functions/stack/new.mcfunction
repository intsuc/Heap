#> examples:stack/new
#
# Creates a stack.
#
# @public
#
# @input
#   storage examples._: arg
#       weak: bool? = false
#
# @output
#   storage examples._: ret
#       ptr: int?
#           The pointer to the stack.

data modify storage heap._: arg set value {size: 1}
data modify storage heap._: arg.weak set from storage examples._: arg.weak
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/t

data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.elements set value []

data modify storage examples._: ret.ptr set from storage heap._: ret.ptr
