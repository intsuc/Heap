#> heap:tests/touch_main_and_target/
#
# @within heap:tests

say touch_main_and_target

data modify storage heap._: arg set value {size: 6}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch

data modify storage heap._: arg set value {size: 7}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/t

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 6} run function heap:fail
execute unless data storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._{_size: 7} run function heap:fail
