#> heap:tests/unlinked_weak_cell_dead/
#
# @within heap:tests

say unlinked_weak_cell_dead

data remove storage heap._: temp

data modify storage heap._: arg set value {}
function heap:api/allocate
data modify storage heap._: temp.source set from storage heap._: ret.ptr

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate
data modify storage heap._: temp.targets append from storage heap._: ret.ptr

data modify storage heap._: arg set from storage heap._: temp
function heap:api/link

function heap:api/unlink

function heap:api/collect

data modify storage heap._: arg.ptr set from storage heap._: temp.targets[0]
function heap:api/touch

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._ run function heap:fail
