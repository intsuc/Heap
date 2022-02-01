#> heap:tests/immediate_defrag/
#
# @within heap:tests

say immediate_defrag

#>
# @private
  #declare score_holder heap.tests:start_before
  #declare score_holder heap.tests:end_before
  #declare score_holder heap.tests:start_after
  #declare score_holder heap.tests:end_after

function heap:core/free_ring/check
execute store result score heap.tests:start_before heap.tests run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result score heap.tests:end_before heap.tests run data get storage heap.free_ring: ""[-1][1] 1.0

data modify storage heap._: arg set value {}
function heap:api/allocate

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:api/deallocate

function heap:core/task/defrag/

function heap:core/free_ring/check
execute store result score heap.tests:start_after heap.tests run data get storage heap.free_ring: ""[-1][0] 1.0
execute store result score heap.tests:end_after heap.tests run data get storage heap.free_ring: ""[-1][1] 1.0

execute unless score heap.tests:start_before heap.tests = heap.tests:start_after heap.tests run function heap:fail
execute unless score heap.tests:end_before heap.tests = heap.tests:end_after heap.tests run function heap:fail

scoreboard players reset heap.tests:start_before heap.tests
scoreboard players reset heap.tests:end_before heap.tests
scoreboard players reset heap.tests:start_after heap.tests
scoreboard players reset heap.tests:end_after heap.tests
