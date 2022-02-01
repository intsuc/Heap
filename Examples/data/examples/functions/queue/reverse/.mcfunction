#> examples:queue/reverse/
#
# Peeks the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: arg
#       ptr: int
#           The pointer to the queue.
#
# @output
#   storage examples._: ret
#       in: int
#           The pointer to the in-stack of the queue.
#       out: int
#           The pointer to the out-stack of the queue.

data modify storage heap._: arg.ptr set from storage examples._: arg.ptr
function heap:api/touch/

data modify storage examples._: stacks set from storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.stacks

data modify storage examples._: arg.ptr set from storage examples._: stacks.out
function examples:stack/is_empty

execute if data storage examples._: ret{is_empty: true} run function examples:queue/reverse/do

data modify storage examples._: ret set from storage examples._: stacks
