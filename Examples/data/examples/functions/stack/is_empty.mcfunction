#> examples:stack/is_empty
#
# Returns true if the stack referenced by `ptr` is empty.
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
#       is_empty: bool

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch/t

execute store success storage examples._: ret.is_empty byte 1.0 unless data storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.elements[0]
