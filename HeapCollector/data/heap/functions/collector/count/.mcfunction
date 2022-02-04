#> heap:collector/count/
#
# @within
#   minecraft:tick
#   heap:collector/collect/

#>
# @within heap:collector/**
#declare score_holder heap:credit

#>
# @within heap:collector/count/**
  #declare score_holder heap:link
  #declare score_holder heap:unlink
  #declare score_holder heap:count

execute store result score heap:credit heap run data get storage heap.config: count_limit 1.0
function heap:collector/count/do
