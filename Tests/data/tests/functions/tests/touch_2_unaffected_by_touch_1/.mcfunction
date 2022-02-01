#> tests:tests/touch_2_unaffected_by_touch_1/
#
# @within tests:tests

say touch_2_unaffected_by_touch_1

data modify storage heap._: arg set value {size: 5}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/2

function heap:api/touch/1

execute unless data storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._{_size: 5} run function tests:fail
