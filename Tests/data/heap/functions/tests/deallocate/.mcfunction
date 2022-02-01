#> heap:tests/deallocate/
#
# @within heap:tests

say deallocate

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/deallocate

function heap:api/touch/1

execute if data storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._ run function heap:fail
