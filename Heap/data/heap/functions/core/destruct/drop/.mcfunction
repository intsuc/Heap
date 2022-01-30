#> heap:core/destruct/drop/
#
# @within heap:api/drop
#
# @input
#   storage heap._: in
#       ptr: int

function heap:core/destruct/

# Cancel out `link` and `unlink`.
  data modify storage heap.collector: link append from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.unlink[]
  data modify storage heap.collector: unlink append from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.link[]

data modify storage heap.collector: unlink append from storage heap._: in.ptr
