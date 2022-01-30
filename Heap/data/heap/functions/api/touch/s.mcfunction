#> heap:api/touch/s
#
# Makes the cell referenced by `ptr` accessible by the reference accessor `storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._`.
#
# @api
#
# @input
#   storage heap._: in
#       ptr: int
#           The pointer to the cell to be touched.

function heap:core/touch_cell/s/
