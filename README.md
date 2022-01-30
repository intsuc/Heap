# Heap

A memory manager in Minecraft.

## Features

- [x] Dynamic memory allocation
- [x] Incremental reference counting

## Installation

Add [Heap]() and [_Heap]() to the `datapacks` folder.
_Heap will automatically initialize the heap and disable itself.

## Examples

See [`Examples`](https://github.com/intsuc/Heap/blob/main/Examples).

## Configuration

| Key                                | Description                                                    | Default |
| :--------------------------------- | :------------------------------------------------------------- | :-----: |
| `storage heap.config: count_limit` | The limit on the number of links and unlinks counted per tick. | `1`     |

## Heap accessors

To access the heap, use *heap accessors* with the following prefix:
- `storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.`
- `storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.`

These heap accessors are called *target heap accessor* (primary) and *source heap accessor* (secondary), respectively.

The target/source heap accessor is recommended to be used in the target/source position as follows:

```mcfunction
# Get `data` accessible by the target heap accessor.
data get storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data

# Append `data` accessible by the source heap accessor to `data` accessible by the target heap accessor.
data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data append from storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.data[]
```

## APIs

### [`heap:api/allocate`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/allocate.mcfunction)

Attempts to allocate a memory cell with `size`.

#### Examples

```mcfunction
# Allocate a memory cell with size 6.
  data modify storage heap._: arg set value {size: 6}
  function heap:api/allocate

# Make the cell accessible.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []
```

### [`heap:api/deallocate`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/deallocate.mcfunction)

Deallocates the memory cell referenced by `ptr`.

#### Examples

```mcfunction
# Allocate a memory cell with size 6.
  data modify storage heap._: arg set value {size: 6}
  function heap:api/allocate

# Deallocate the cell.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/deallocate
```

### [`heap:api/link`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/link.mcfunction)

Creates references from the cell referenced by `source` to the memory cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a memory cell `a` with size 1.
  data modify storage heap._: arg set value {size: 1}
  function heap:api/allocate
  data modify storage _ a set from storage heap._: ret.ptr

# Allocate a memory cell `b` with size 2.
  data modify storage heap._: arg set value {size: 2}
  function heap:api/allocate
  data modify storage _ b set from storage heap._: ret.ptr

# Allocate a memory cell `c` with size 3.
  data modify storage heap._: arg set value {size: 3}
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

Removes the references from the cell referenced by `source` to the memory cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a memory cell `a` with size 1.
  data modify storage heap._: arg set value {size: 1}
  function heap:api/allocate
  data modify storage _ a set from storage heap._: ret.ptr

# Allocate a memory cell `b` with size 2.
  data modify storage heap._: arg set value {size: 2}
  function heap:api/allocate
  data modify storage _ b set from storage heap._: ret.ptr

# Allocate a memory cell `c` with size 3.
  data modify storage heap._: arg set value {size: 3}
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

### [`heap:api/touch/t`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/t.mcfunction)

Makes the cell referenced by `ptr` accessible by the target heap accessor.

#### Examples

```mcfunction
# Allocate a memory cell with size 6.
  data modify storage heap._: arg set value {size: 6}
  function heap:api/alloc/raw

# Make the cell accessible by the target heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []

# Get `data` in the cell.
  data get storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data
```

### [`heap:api/touch/s`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/s.mcfunction)

Makes the cell referenced by `ptr` accessible by the source heap accessor.

#### Examples

```mcfunction
# Allocate a memory cell `a` with size 2.
  data modify storage heap._: arg set value {size: 2}
  function heap:api/alloc/raw

# Make the cell accessible by the target heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/t

# Allocate a memory cell `b` with size 4.
  data modify storage heap._: arg set value {size: 4}
  function heap:api/alloc/raw

# Make the cell accessible by the source heap accessor.
  data modify storage heap._: arg.ptr set from storage heap._: ret.ptr
  function heap:api/touch/s

# Store `[0, 1]` in `data` in the cell `a`.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value [0, 1]

# Store `[2, 3]` in `data` in the cell `b`.
  data modify storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.data set value [2, 3]

# Append `data` in the cell `b` to `data` in the cell `a`.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data append from storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.data[]
```

## Internals

### Data structure

Heap uses 6-ary 6-layer *filter-mapped trie* to achieve random access in Ω(logN)-O(log²N) time.
The access time *is* almost optimal at 6-ary.

### Allocator

### Reference counting

## References

1. Jones, R.E., Hosking, A., & Moss, J.E. (2011). The Garbage Collection Handbook: The art of automatic memory management. Chapman and Hall / CRC Applied Algorithms and Data Structures Series.
