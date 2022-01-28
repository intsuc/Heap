#> heaps:core/touch/_/1/
#
# @within heaps:core/touch/_/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/_/1/**
#declare score_holder heaps:addr

data remove storage heaps: _[{_: 0b}]._[]._
execute unless data storage heaps: _[{_: 0b}]._ run data modify storage heaps: _[{_: 0b}]._ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/_/1/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/_/1/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/_/1/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/_/1/3
