#> heap:tests/allocate_weak_count/
#
# @within heap:tests

say allocate_weak_count

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_count: 1610612640} run function heap:fail
