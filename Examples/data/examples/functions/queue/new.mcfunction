#> examples:queue/new
#
# Creates a queue.
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
#           The pointer to the queue.

data modify storage examples._: weak set from storage examples._: arg.weak

data modify storage examples._: arg set value {weak: true}
function examples:stack/new
data modify storage examples._: stacks.in set from storage examples._: ret.ptr

data modify storage examples._: arg set value {weak: true}
function examples:stack/new
data modify storage examples._: stacks.out set from storage examples._: ret.ptr

data modify storage heap._: arg set value {}
data modify storage heap._: arg.weak set from storage examples._: weak
function heap:api/allocate

data modify storage heap._: arg set value {targets: [I; 0, 0]}
data modify storage heap._: arg.source set from storage heap._: ret.ptr
data modify storage heap._: arg.targets[0] set from storage examples._: stacks.in
data modify storage heap._: arg.targets[1] set from storage examples._: stacks.out
function heap:api/link

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/1

data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.stacks set from storage examples._: stacks

data modify storage examples._: ret.ptr set from storage heap._: ret.ptr
