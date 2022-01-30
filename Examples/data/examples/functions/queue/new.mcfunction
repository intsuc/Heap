#> examples:queue/new
#
# Creates a queue.
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
#           The pointer to the queue.

data modify storage examples._: weak set from storage examples._: in.weak

data modify storage examples._: in set value {weak: true}
function examples:stack/new
data modify storage examples._: stacks.in set from storage examples._: out.ptr

data modify storage examples._: in set value {weak: true}
function examples:stack/new
data modify storage examples._: stacks.out set from storage examples._: out.ptr

data modify storage heap._: in set value {size: 1}
data modify storage heap._: in.weak set from storage examples._: weak
function heap:api/allocate

data modify storage heap._: in.ptr set from storage heap._: out.ptr
function heap:api/touch/t

data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.stacks set from storage examples._: stacks

data modify storage examples._: out.ptr set from storage heap._: out.ptr
