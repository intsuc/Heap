#> heap:tests/touch_1/
#
# @within heap:tests

say touch_1

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 2} run function heap:fail
