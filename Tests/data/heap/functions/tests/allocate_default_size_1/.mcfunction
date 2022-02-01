#> heap:tests/allocate_default_size_1/
#
# @within heap:tests

say allocate_default_size_1

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/1

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._{_size: 1} run function heap:fail
