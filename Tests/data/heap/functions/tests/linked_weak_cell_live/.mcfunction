#> heap:tests/linked_weak_cell_live/
#
# @within heap:tests

say linked_weak_cell_live

data remove storage heap._: temp

data modify storage heap._: arg set value {}
function heap:api/allocate
data modify storage heap._: temp.source set from storage heap._: ret.ptr

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate
data modify storage heap._: temp.targets append from storage heap._: ret.ptr

data modify storage heap._: arg set from storage heap._: temp
function heap:api/link

function heap:api/collect

data modify storage heap._: arg.ptr set from storage heap._: temp.targets[0]
function heap:api/touch/

execute unless data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._ run function heap:fail
