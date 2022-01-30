# Heap

Heap is a memory manager in Minecraft.

## APIs

### [`heap:api/alloc`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/alloc.mcfunction)

Attempts to allocate a raw cell with `size`.

### [`heap:api/dealloc`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/dealloc.mcfunction)

Deallocates the raw cell referenced by `addr`.

### [`heap:api/new`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/new.mcfunction)

Attempts to allocate a strong reference cell with `size`.

### [`heap:api/weak`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/weak.mcfunction)

Attempts to allocate a weak reference cell with `size`.

### [`heap:api/drop`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/drop.mcfunction)

Deallocates the reference cell referenced by `addr`.

### [`heap:api/link`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/link.mcfunction)

Creates references from `source` to `targets`.

### [`heap:api/unlink`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/unlink.mcfunction)

Removes references from `source` to `targets`.

### [`heap:api/touch/s`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/s.mcfunction)

Makes the cell referenced by `addr` accessible by the reference accessor `storage heap: _[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._[{s: 0b}]._`.

### [`heap:api/touch/t`](https://github.com/intsuc/Heap/blob/main/Heap/data/heap/functions/api/touch/t.mcfunction)

Makes the cell referenced by `addr` accessible by the reference accessor `storage heap: _[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._[{t: 0b}]._`.
