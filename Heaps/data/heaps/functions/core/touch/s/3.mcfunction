#> heaps:core/touch/s/3
#
# @within heaps:core/touch/s/
#
# @input
#   score heaps:addr heaps

#>
# @private
#declare score_holder heaps:addr

execute store result storage heaps: cache[7] int 1.0 run scoreboard players get heaps:addr heaps

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].s
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].s set value 0b
