#> heaps:core/touch/_/0/
#
# @within heaps:core/touch/_/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/_/0/**
#declare score_holder heaps:addr

data remove storage heaps: _[]._
execute unless data storage heaps: _ run data modify storage heaps: _ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/_/0/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/_/0/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/_/0/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/_/0/3
