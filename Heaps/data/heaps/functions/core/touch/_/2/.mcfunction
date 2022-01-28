#> heaps:core/touch/_/2/
#
# @within heaps:core/touch/_/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/_/2/**
#declare score_holder heaps:addr

data remove storage heaps: _[{_: 0b}]._[{_: 0b}]._[]._
execute unless data storage heaps: _[{_: 0b}]._[{_: 0b}]._ run data modify storage heaps: _[{_: 0b}]._[{_: 0b}]._ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/_/2/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/_/2/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/_/2/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/_/2/3
