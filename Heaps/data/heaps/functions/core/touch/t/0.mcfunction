#> heaps:core/touch/t/0
#
# @within heaps:core/touch/t/
#
# @input
#   score heaps:addr heaps

#>
# @private
#declare score_holder heaps:addr

execute store result storage heaps: cache_t[0] int 1.0 run scoreboard players get heaps:addr heaps

data remove storage heaps: _[].t
data modify storage heaps: _[{-: 0b}].t set value 0b
