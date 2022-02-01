#> examples:array/new
#
# Creates an array.
#
# @public
#
# @input
#   storage examples._: arg
#       size: int
#           The size of the array.
#       weak: bool? = false
#
# @output
#   storage examples._: ret
#       ptr: int?
#           The pointer to the array.

# Allocate a cell to store an array.
  data modify storage heap._: arg set value {}
  data modify storage heap._: arg.weak set from storage examples._: arg.weak
  function heap:api/allocate

# Touch the cell that contains the array.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/

# Store the size of the array in the cell.
  data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.size set from storage examples._: arg.size

# Return the pointer to the array.
  data modify storage examples._: ret.ptr set from storage heap._: ret.ptr
