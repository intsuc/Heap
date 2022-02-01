#> heap:tests/collect_dead_weak_cell/
#
# @within heap:tests

say collect_dead_weak_cell

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate

function heap:api/collect

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/touch/

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._ run function heap:fail
