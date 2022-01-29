#> heap:core/link/
#
# @within heap:api/link
#
# @input
#   storage heap._: in
#       source: int
#       targets: int_collection

data modify storage heap._: in.addr set from storage heap._: in.source
function heap:core/touch/-/

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}].targets append from storage heap._: in.targets[]
