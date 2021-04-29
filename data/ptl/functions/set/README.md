# Sets

A _Set_ is an unordered type which stores data as a collection of unique _items_. A Set is not inherently meant to be accessed directly. Sets in the PTL are realized as standard NBT arrays:
```
MySet = [2.71828f,{foo:{bar:"baz"}},"minecraft:stone_button",13]
```

The following operations on Sets are provided, either as functions or translatable snippets:
* `add : <Self> <Item> -> <Self>`
  * Adds `<Item>` to `<Self>`
  * Does nothing if `<Item>` is already present in `<Self>`
* `and : <Self> <Other> -> <And>`
  * Returns the Set of all items in `<Self>` and `<Other>`
* `diff : <Self> <Other> -> <Diff>`
  * Removes all items in `<Other>` from `<Self>` if they are present
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `or : <Self> <Other> -> <Or>`
  * Returns the Set of all items in `<Self>` or `<Other>`
* `subset : <Self> <Other> -> <$is_subset>`
  * Returns whether `<Other>` is a subset of `<Self>`
