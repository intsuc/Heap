#> tests:tests/allocate_default_size_1/
#
# @within tests:tests

say allocate_default_size_1

data modify storage heap._: arg set value {}
function heap:api/allocate

execute unless data storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._{_size: 1} run function tests:fail
