#> heap:tests/touch_main/
#
# @within heap:tests

say touch_main

data modify storage heap._: arg set value {size: 2}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 2} run function heap:fail
