#> heap:collector/count/
#
# @internal

#>
# @within heap:collector/count/**
  #declare score_holder heap:credit
  #declare score_holder heap:link
  #declare score_holder heap:unlink
  #declare score_holder heap:count

execute store result score heap:credit heap run data get storage heap.executor: credit 1.0
function heap:collector/count/do
