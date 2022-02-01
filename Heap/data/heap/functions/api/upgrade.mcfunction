#> heap:api/upgrade
#
# Upgrades the weak cell referenced by `ptr` to a strong cell.
#
# @api
#
# @input
#   storage heap._: arg
#       ptr: int
#           The pointer to the weak cell to be upgraded.

function heap:core/upgrade/
