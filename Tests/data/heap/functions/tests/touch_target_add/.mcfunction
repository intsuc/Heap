#> heap:tests/touch_target_add/
#
# @within heap:tests

say touch_target_add

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
data modify storage heap._: arg.add set value false
function heap:api/touch/t

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
data modify storage heap._: arg.add set value true
function heap:api/touch/t

#>
# @private
#declare score_holder heap:count
execute store result score heap:count heap if data storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]

execute unless score heap:count heap matches 2 run function heap:fail

scoreboard players reset heap:count heap
