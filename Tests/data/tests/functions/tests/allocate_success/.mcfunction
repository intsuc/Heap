#> tests:tests/allocate_success/
#
# @internal tests:tests

say allocate_success

data modify storage heap._: arg set value {}
function heap:api/allocate

execute unless data storage heap._: ret.ptr run function tests:fail
