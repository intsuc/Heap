#> examples:array/set_unsafe
#
# Sets the element at `index` in the array referenced by `ptr` to `element`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the array.
#       index: int
#           The index.
#       element: any
#           The element to be set.

function examples:array/touch

data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.element set from storage examples._: arg.element
