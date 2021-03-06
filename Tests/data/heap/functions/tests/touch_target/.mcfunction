#> heap:tests/touch_target/
#
# @within heap:tests

say touch_target

data modify storage heap._: arg set value {size: 3}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/t

execute unless data storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._{_size: 3} run function heap:fail
