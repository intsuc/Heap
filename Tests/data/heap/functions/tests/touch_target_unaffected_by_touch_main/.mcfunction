#> heap:tests/touch_target_unaffected_by_touch_main/
#
# @within heap:tests

say touch_target_unaffected_by_touch_main

data modify storage heap._: arg set value {size: 5}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/t

function heap:api/touch

execute unless data storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._{_size: 5} run function heap:fail
