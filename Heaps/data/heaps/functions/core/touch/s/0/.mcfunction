#> heaps:core/touch/s/0/
#
# @within heaps:core/touch/s/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/s/0/**
#declare score_holder heaps:addr

data remove storage heaps.vector: _[].s
execute unless data storage heaps.vector: _ run data modify storage heaps.vector: _ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/s/0/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/s/0/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/s/0/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/s/0/3
