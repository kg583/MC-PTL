# Sets

A _Set_ is an unordered type which stores data as a collection of unique _items_. A Set is not inherently meant to be accessed directly. Sets in the PTL are realized as standard NBT arrays:
```
MySet = [2.71828f,{foo:{bar:"baz"}},"minecraft:stone_button",13]
```

The following operations on Sets are provided, either as functions or translatable snippets:
* `add : <Self> <Item> -> <Self>`
  * Adds `<Item>` to `<Self>`
  * Does nothing if `<Item>` is already present in `<Self>`
* `and : <Self> <Other> -> <Self>`
  * Returns the Set of all items in `<Self>` and `<Other>`
* `diff : <Self> <Other> -> <Self>`
  * Removes all items in `<Other>` from `<Self>` if they are present
* `find : <Self> <Item> -> <$index>`
  * Finds the earliest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `or : <Self> <Other> -> <Self>`
  * Returns the Set of all items in `<Self>` or `<Other>`
* `pop : <Self> <Item> -> <Self>`
  * Removes `<Item>` from `<Self>`
  * Does nothing if `<Item>` is not contained in `<Self>`
* `rfind : <Self> <Item> -> <$index>`
  * Finds the latest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `subset : <Self> <Subset> -> <Self> <$is_subset> <Diff>`
  * Returns whether `<Subset>` is a subset of `<Self>`, setting `<Diff>` to the elements of `<Subset>` not in `<Self>`
  * `<$is_subset>` is `0` if `<Diff>` is non-empty and positive otherwise
* `xor : <Self> <Other> -> <Self>`
  * Returns the Set of all items found in `<Self>` or `<Other>`, but not both
