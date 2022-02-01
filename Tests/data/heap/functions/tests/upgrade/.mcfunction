#> heap:tests/upgrade/
#
# @within heap:tests

say upgrade

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/upgrade

function heap:api/touch/

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._._count run function heap:fail
