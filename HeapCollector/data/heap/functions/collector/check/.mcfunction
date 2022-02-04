#> heap:collector/check/
#
# @within minecraft:tick

#>
# @private
  #declare score_holder heap:occupied
  #declare score_holder heap:collect_threshold

execute store result score heap:occupied heap run data get storage heap: occupied 1.0
execute store result score heap:collect_threshold heap run data get storage heap.config: collect_threshold 1.0

execute if score heap:occupied heap >= heap:collect_threshold heap run function heap:collector/collect/
execute if score heap:occupied heap < heap:collect_threshold heap run function heap:collector/count/

scoreboard players reset heap:occupied heap
scoreboard players reset heap:collect_threshold heap
