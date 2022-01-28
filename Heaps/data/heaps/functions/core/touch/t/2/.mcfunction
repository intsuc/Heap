#> heaps:core/touch/t/2/
#
# @within heaps:core/touch/t/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/t/2/**
#declare score_holder heaps:addr

data remove storage heaps: _[{t: 0b}]._[{t: 0b}]._[].t
execute unless data storage heaps: _[{t: 0b}]._[{t: 0b}]._ run data modify storage heaps: _[{t: 0b}]._[{t: 0b}]._ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches 0..1073741823 run function heaps:core/touch/t/2/0
execute if score heaps:addr heaps matches 1073741824.. run function heaps:core/touch/t/2/1
execute if score heaps:addr heaps matches ..-1073741825 run function heaps:core/touch/t/2/2
execute if score heaps:addr heaps matches -1073741824..-1 run function heaps:core/touch/t/2/3
