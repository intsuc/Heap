#> heaps:core/touch/s/0
#
# @within heaps:core/touch/s/
#
# @input
#   score heaps:addr heaps

#>
# @private
#declare score_holder heaps:addr

execute store result storage heaps: cache_s[0] int 1.0 run scoreboard players get heaps:addr heaps

data remove storage heaps: _[].s
data modify storage heaps: _[{-: 0b}].s set value 0b
