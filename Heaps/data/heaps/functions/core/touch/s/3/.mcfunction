#> heaps:core/touch/s/3/
#
# @internal
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/s/3/**
#declare score_holder heaps:addr

data remove storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[].s
data modify storage heaps.vector: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/s/3/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/s/3/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/s/3/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/s/3/3
