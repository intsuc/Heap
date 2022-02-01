# Heap

A memory manager in Minecraft.

## Features

- [x] Random access memory accessible in Ω(logN)-O(log²N) time
- [x] Dynamic memory allocation
- [x] Incremental garbage collection by reference counting

## Installation

Add [Heap]() and [_Heap]() to the `datapacks` folder.
_Heap will automatically initialize the heap and disable itself.

## Examples

See [Examples](https://github.com/intsuc/Heap/blob/main/Examples).

## Types of cells

Heap has two types of cells: *strong* and *weak*.
Strong cells are always live and must be deallocated manually.
Weak cells are live only if there is at least one reference from a strong cell and can be deallocated automatically.

## Heap accessors

To access the heap, use *heap accessors* with the following prefix:
- Primary heap accessor: `storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.`
- Secondary heap accessor: `storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.`

## Configuration

| Key                                 | Description                                                    | Default |
| :---------------------------------- | :------------------------------------------------------------- | :-----: |
| `storage heap.config: count_limit`  | The limit on the number of links and unlinks counted per tick. | `1`     |
| `storage heap.config: defrag_limit` | The limit on the number of free cells defragmented per tick.   | `1`     |

## APIs

### [`heap:api/allocate`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/allocate.mcfunction)

Attempts to allocate a cell with `size`.
If `weak`, the cell will be weak.
Returns the pointer to the cell as `ptr` if the allocation succeeds.

#### Examples

```mcfunction
# Allocate a cell with size 1.
  data modify storage heap._: arg set value {}
  function heap:api/allocate

# Make the cell accessible.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/1

# Store `[]` in `data` in the cell.
  data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data set value []

# Allocate a cell with size 2.
  data modify storage heap._: arg set value {size: 2}
  function heap:api/allocate

# Allocate a weak cell with size 3.
  data modify storage heap._: arg set value {size: 3, weak: true}
  function heap:api/allocate
```

### [`heap:api/deallocate`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/deallocate.mcfunction)

Deallocates the cell referenced by `ptr`.

#### Examples

```mcfunction
# Allocate a cell.
  data modify storage heap._: arg set value {}
  function heap:api/allocate

# Deallocate the cell.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/deallocate
```

### [`heap:api/link`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/link.mcfunction)

Creates references from the cell referenced by `source` to the cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a cell `a`.
  data modify storage heap._: arg set value {}
  function heap:api/allocate
  data modify storage _ a set from storage heap._: ret.ptr

# Allocate a weak cell `b`.
  data modify storage heap._: arg set value {weak: true}
  function heap:api/allocate
  data modify storage _ b set from storage heap._: ret.ptr

# Allocate a weak cell `c`.
  data modify storage heap._: arg set value {weak: true}
  function heap:api/allocate
  data modify storage _ c set from storage heap._: ret.ptr

# Create references `a → b` and `a → c`.
  data modify storage heap._: arg set value {targets: [I; 0, 0]}
  data modify storage heap._: arg.source set from storage _ a
  data modify storage heap._: arg.targets[0] set from storage _ b
  data modify storage heap._: arg.targets[1] set from storage _ c
  function heap:api/link
```

### [`heap:api/unlink`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/unlink.mcfunction)

Removes the references from the cell referenced by `source` to the cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a cell `a`.
  data modify storage heap._: arg set value {}
  function heap:api/allocate
  data modify storage _ a set from storage heap._: ret.ptr

# Allocate a weak cell `b`.
  data modify storage heap._: arg set value {weak: true}
  function heap:api/allocate
  data modify storage _ b set from storage heap._: ret.ptr

# Allocate a weak cell `c`.
  data modify storage heap._: arg set value {weak: true}
  function heap:api/allocate
  data modify storage _ c set from storage heap._: ret.ptr

# Create references `a → b` and `a → c`.
  data modify storage heap._: arg set value {targets: [I; 0, 0]}
  data modify storage heap._: arg.source set from storage _ a
  data modify storage heap._: arg.targets[0] set from storage _ b
  data modify storage heap._: arg.targets[1] set from storage _ c
  function heap:api/link

# Remove the reference `a → b`.
  data modify storage heap._: arg set value {targets: [I; 0]}
  data modify storage heap._: arg.source set from storage _ a
  data modify storage heap._: arg.targets[0] set from storage _ b
  function heap:api/unlink
```

### [`heap:api/touch/1`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/1.mcfunction)

Makes the cell referenced by `ptr` accessible by the primary heap accessor.

#### Examples

```mcfunction
# Allocate a cell.
  data modify storage heap._: arg set value {}
  function heap:api/alloc/raw

# Make the cell accessible by the primary heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/1

# Store `[]` in `data` in the cell.
  data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data set value []

# Get `data` in the cell.
  data get storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data
```

### [`heap:api/touch/2`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/2.mcfunction)

Makes the cell referenced by `ptr` accessible by the secondary heap accessor.

#### Examples

```mcfunction
# Allocate a cell `a`.
  data modify storage heap._: arg set value {}
  function heap:api/alloc/raw

# Make the cell accessible by the primary heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/1

# Allocate a cell `b`.
  data modify storage heap._: arg set value {}
  function heap:api/alloc/raw

# Make the cell accessible by the secondary heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/2

# Store `[0, 1]` in `data` in the cell `a`.
  data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data set value [0, 1]

# Store `[2, 3]` in `data` in the cell `b`.
  data modify storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.data set value [2, 3]

# Append `data` in the cell `b` to `data` in the cell `a`.
  data modify storage heap: _[-6]._[-6]._[-6]._[-6]._[-6]._[-6]._.data append from storage heap: _[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._[{-: 0b}]._.data[]
```

### [`heap:api/upgrade`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/upgrade.mcfunction)

Upgrades the weak cell referenced by `ptr` to a strong cell.

#### Examples

```mcfunction
# Allocate a weak cell.
  data modify storage heap._: arg set value {weak: true}
  function heap:api/allocate

# Upgrade the cell.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/upgrade
```

## Internals

### Memory

Heap uses *list-mapped trie* to achieve random access in Ω(logN)-O(log²N) time.

### Allocator

Heap uses *ring queue* to keep track of free cells.

### Garbage collector

Heap uses *incremental reference counting* to automatically deallocate unreachable weak cells.

## References

1. Jones, R.E., Hosking, A., & Moss, J.E. (2011). The Garbage Collection Handbook: The art of automatic memory management. Chapman and Hall / CRC Applied Algorithms and Data Structures Series.
