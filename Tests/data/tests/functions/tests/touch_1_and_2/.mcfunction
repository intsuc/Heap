#> tests:tests/touch_1_and_2/
#
# @within tests:tests

say touch_1_and_2

data modify storage heap._: arg set value {size: 6}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/1

data modify storage heap._: arg set value {size: 7}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/2

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 6} run function tests:fail
execute unless data storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._{_size: 7} run function tests:fail
