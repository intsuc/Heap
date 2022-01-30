#> examples:queue/reverse/do
#
# @within examples:queue/reverse/**

data modify storage examples._: in.ptr set from storage examples._: stacks.in
function examples:stack/pop

data modify storage examples._: in.ptr set from storage examples._: stacks.out
data modify storage examples._: in.element set from storage examples._: out.element
function examples:stack/push

data modify storage examples._: in.ptr set from storage examples._: stacks.in
function examples:stack/is_empty

execute if data storage examples._: out{is_empty: false} run function examples:queue/reverse/do
