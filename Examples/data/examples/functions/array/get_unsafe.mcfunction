#> examples:array/get_unsafe
#
# Returns the element at `index` in the array referenced by `ptr` as `element`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the array.
#       index: int
#           The index.
#
# @output
#   storage examples._: ret
#       element: any?
#           The element at `index` in the array.

function examples:array/touch

data remove storage examples._: ret.element
data modify storage examples._: ret.element set from storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.element
