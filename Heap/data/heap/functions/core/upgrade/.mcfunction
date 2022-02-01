#> heap:core/upgrade/
#
# @within heap:api/upgrade
#
# @input
#   storage heap._: arg
#       ptr: int
#           The pointer to the weak cell to be upgraded.

function heap:core/touch_cell/internal/

data remove storage heap: _[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._[{i: 0b}]._._count
