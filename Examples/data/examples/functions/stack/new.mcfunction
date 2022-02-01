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

data modify storage heap._: arg set value {}
data modify storage heap._: arg.weak set from storage examples._: arg.weak
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/

data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.elements set value []

data modify storage examples._: ret.ptr set from storage heap._: ret.ptr
