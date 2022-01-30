#> examples:queue/new
#
# Creates a queue.
#
# @public
#
# @output
#   storage examples._: out
#       ptr: int?
#           The pointer to the queue.

data remove storage examples._: stacks

function examples:stack/new
data modify storage examples._: stacks.in set from storage examples._: out.ptr

function examples:stack/new
data modify storage examples._: stacks.out set from storage examples._: out.ptr

data modify storage heap._: in set value {size: 1}
function heap:api/allocate/raw

data modify storage heap._: in.ptr set from storage heap._: out.ptr
function heap:api/touch/t

data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.stacks set from storage examples._: stacks

data modify storage examples._: out.ptr set from storage heap._: out.ptr
