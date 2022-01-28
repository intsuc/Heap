#> heaps:core/touch/t/3
#
# @within heaps:core/touch/t/
#
# @input
#   score heaps:addr heaps

#>
# @private
#declare score_holder heaps:addr

execute store result storage heaps: cache_t[3] int 1.0 run scoreboard players get heaps:addr heaps

data remove storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[].t
data modify storage heaps: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].t set value 0b
