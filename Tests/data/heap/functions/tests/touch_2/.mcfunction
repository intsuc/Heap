#> heap:tests/touch_2/
#
# @within heap:tests

say touch_2

data modify storage heap._: arg set value {size: 3}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/-

execute unless data storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._{_size: 3} run function heap:fail
