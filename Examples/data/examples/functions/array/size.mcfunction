#> examples:array/size
#
# Returns the size of the array referenced by `ptr` as `size`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the array.
#
# @output
#   storage examples._: ret
#       size: int
#           The size of the array.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch/

data modify storage examples._: ret.size set from storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.size
