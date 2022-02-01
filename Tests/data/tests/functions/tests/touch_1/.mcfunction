#> tests:tests/touch_1/
#
# @within tests:tests

say touch_1

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/1

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 2} run function tests:fail
