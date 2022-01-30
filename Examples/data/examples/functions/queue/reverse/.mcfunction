#> examples:queue/reverse/
#
# Peeks the queue referenced by `ptr`.
#
# @public
#
# @input
#   storage examples._: in
#       ptr: int
#           The pointer to the queue.
#
# @output
#   storage examples._: out
#       in: int
#           The pointer to the in-stack of the queue.
#       out: int
#           The pointer to the out-stack of the queue.

data modify storage heap._: in.ptr set from storage examples._: in.ptr
function heap:api/touch/t

data modify storage examples._: stacks set from storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.stacks

data modify storage examples._: in.ptr set from storage examples._: stacks.out
function examples:stack/is_empty

execute if data storage examples._: out{is_empty: true} run function examples:queue/reverse/do

data modify storage examples._: out set from storage examples._: stacks
