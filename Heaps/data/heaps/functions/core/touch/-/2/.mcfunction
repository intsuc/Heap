#> heaps:core/touch/-/2/
#
# @within heaps:core/touch/-/
#
# @input
#   score heaps:addr heaps

#>
# @within heaps:core/touch/-/2/**
#declare score_holder heaps:addr

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[].-
execute unless data storage heaps: _[{-: 0b}]._[{-: 0b}]._ run data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._ set from storage heaps.immutable: node

execute if score heaps:addr heaps matches ..3 run function heaps:core/touch/-/2/0
execute if score heaps:addr heaps matches 4..7 run function heaps:core/touch/-/2/1
execute if score heaps:addr heaps matches 8..11 run function heaps:core/touch/-/2/2
execute if score heaps:addr heaps matches 12.. run function heaps:core/touch/-/2/3
