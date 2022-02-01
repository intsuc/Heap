#> tests:tests/allocate_weak_count/
#
# @within tests:tests

say allocate_weak_count

data modify storage heap._: arg set value {weak: true}
function heap:api/allocate

execute unless data storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._{_count: 1610612640} run function tests:fail
