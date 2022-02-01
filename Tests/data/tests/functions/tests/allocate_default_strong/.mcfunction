#> tests:tests/allocate_default_strong/
#
# @within tests:tests

say allocate_default_strong

data modify storage heap._: arg set value {}
function heap:api/allocate

execute if data storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count run function tests:fail
