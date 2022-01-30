#> heap:core/construct/
#
# @within heap:core/construct/**
#
# @input
#   storage heap._: cell
#       root: unit?
#       count: int?

data modify storage heap._: cell.- set value 0b
data modify storage heap._: cell.size set from storage heap._: in.size

data modify storage heap._: in.ptr set from storage heap._: out.ptr
function heap:core/touch_cell/-/
data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._ set from storage heap._: cell
