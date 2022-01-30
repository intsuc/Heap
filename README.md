# Heap

A memory manager in Minecraft.

## Features

- [x] Dynamic memory allocation
- [x] Incremental reference counting

## Installation

Add [Heap]() and [_Heap]() to the `datapacks` folder.
_Heap will automatically initialize the heap and disable itself.

## Reference accessors

## APIs

### [`heap:api/alloc`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/alloc.mcfunction)

Attempts to allocate a raw cell with `size`.

#### Examples

```mcfunction
# Allocate a raw cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/alloc

# Make the cell accessible.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []
```

### [`heap:api/dealloc`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/dealloc.mcfunction)

Deallocates the raw cell referenced by `ptr`.
Raw cells must be deallocated by this function.

#### Examples

```mcfunction
# Allocate a raw cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/alloc

# Deallocate the cell.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/dealloc
```

### [`heap:api/new`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/new.mcfunction)

Attempts to allocate a strong ref cell with `size`.

#### Examples

```mcfunction
# Allocate a strong ref cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/new

# Make the cell accessible.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []
```

### [`heap:api/weak`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/weak.mcfunction)

Attempts to allocate a weak ref cell with `size`.

#### Examples

```mcfunction
# Allocate a weak ref cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/weak

# Make the cell accessible.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []
```

### [`heap:api/drop`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/drop.mcfunction)

Deallocates the ref cell referenced by `ptr`.
Ref cells must be deallocated by this function.

#### Examples

```mcfunction
# Allocate a weak ref cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/weak

# Deallocate the cell.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/drop
```

### [`heap:api/link`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/link.mcfunction)

Creates references from the ref cell referenced by `source` to the ref cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a strong ref cell `a` with size 1.
  data modify storage heap._: in set value {size: 1}
  function heap:api/new
  data modify storage _ a set from storage heap._: out.ptr

# Allocate a weak ref cell `b` with size 2.
  data modify storage heap._: in set value {size: 2}
  function heap:api/weak
  data modify storage _ b set from storage heap._: out.ptr

# Allocate a weak ref cell `c` with size 3.
  data modify storage heap._: in set value {size: 3}
  function heap:api/weak
  data modify storage _ c set from storage heap._: out.ptr

# Create references `a → b` and `a → c`.
  data modify storage heap._: in set value {targets: [I; 0, 0]}
  data modify storage heap._: in.source set from storage _ a
  data modify storage heap._: in.targets[0] set from storage _ b
  data modify storage heap._: in.targets[1] set from storage _ c
  function heap:api/link
```

### [`heap:api/unlink`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/unlink.mcfunction)

Removes the references from the ref cell referenced by `source` to the ref cells referenced by `targets`.

#### Examples

```mcfunction
# Allocate a strong ref cell `a` with size 1.
  data modify storage heap._: in set value {size: 1}
  function heap:api/new
  data modify storage _ a set from storage heap._: out.ptr

# Allocate a weak ref cell `b` with size 2.
  data modify storage heap._: in set value {size: 2}
  function heap:api/weak
  data modify storage _ b set from storage heap._: out.ptr

# Allocate a weak ref cell `c` with size 3.
  data modify storage heap._: in set value {size: 3}
  function heap:api/weak
  data modify storage _ c set from storage heap._: out.ptr

# Create references `a → b` and `a → c`.
  data modify storage heap._: in set value {targets: [I; 0, 0]}
  data modify storage heap._: in.source set from storage _ a
  data modify storage heap._: in.targets[0] set from storage _ b
  data modify storage heap._: in.targets[1] set from storage _ c
  function heap:api/link

# Remove the reference `a → b`.
  data modify storage heap._: in set value {targets: [I; 0]}
  data modify storage heap._: in.source set from storage _ a
  data modify storage heap._: in.targets[0] set from storage _ b
  function heap:api/unlink
```

### [`heap:api/touch/t`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/t.mcfunction)

Makes the cell referenced by `ptr` accessible by the reference accessor `storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._`.

#### Examples

```mcfunction
# Allocate a raw cell with size 6.
  data modify storage heap._: in set value {size: 6}
  function heap:api/alloc

# Make the cell accessible by the target reference accessor.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/t

# Store `[]` in `data` in the cell.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value []

# Get `data` in the cell.
  data get storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data
```

### [`heap:api/touch/s`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/s.mcfunction)

Makes the cell referenced by `ptr` accessible by the reference accessor `storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._`.

#### Examples

```mcfunction
# Allocate a raw cell `a` with size 2.
  data modify storage heap._: in set value {size: 2}
  function heap:api/alloc

# Make the cell accessible by the target reference accessor.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/t

# Allocate a raw cell `b` with size 4.
  data modify storage heap._: in set value {size: 4}
  function heap:api/alloc

# Make the cell accessible by the source reference accessor.
  data modify storage heap._: in.ptr set from storage heap._: out.ptr
  function heap:api/touch/s

# Store `[0, 1]` in `data` in the cell `a`.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data set value [0, 1]

# Store `[2, 3]` in `data` in the cell `b`.
  data modify storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.data set value [2, 3]

# Append `data` in the cell `b` to `data` in the cell `a`.
  data modify storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._.data append from storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._.data[]
```

## Internals
