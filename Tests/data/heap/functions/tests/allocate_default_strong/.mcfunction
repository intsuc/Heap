#> heap:tests/allocate_default_strong/
#
# @within heap:tests

say allocate_default_strong

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._._count run function heap:fail
