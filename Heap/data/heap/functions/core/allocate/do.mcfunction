#> heap:core/allocate/do
#
# @within heap:core/allocate/

data modify storage heap._: cell set value {-: 0b}
data modify storage heap._: cell._.size set from storage heap._: arg.size

# If `weak`, set `count` to 0 (1610612640 - 1610612640).
  execute if data storage heap._: arg{weak: true} run data modify storage heap._: cell._.count set value 1610612640

data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
function heap:core/touch_cell/-/

data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}] set from storage heap._: cell
