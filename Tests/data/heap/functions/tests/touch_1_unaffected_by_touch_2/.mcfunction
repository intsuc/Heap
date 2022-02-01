#> heap:tests/touch_1_unaffected_by_touch_2/
#
# @within heap:tests

say touch_1_unaffected_by_touch_2

data modify storage heap._: arg set value {size: 4}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/

function heap:api/touch/-

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 4} run function heap:fail
