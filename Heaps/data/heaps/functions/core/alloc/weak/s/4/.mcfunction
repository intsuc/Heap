#> heaps:core/alloc/weak/s/4/
#
# @within heaps:api/alloc/weak/s/4
#
# @input
#   storage heaps: in
#       size: int
#
# @output
#   storage heaps: out
#       addr: int?

data remove storage heaps.free: ""[4]
data remove storage heaps.free: ""[3]
data modify storage heaps.free: "" append value {}
function heaps:core/find/

data modify storage heaps: in.addr set from storage heaps: out.addr
execute if data storage heaps: in.addr run function heaps:core/alloc/weak/s/4/do
