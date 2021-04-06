# Lists

A _List_ is an ordered type which stores data as an adjustable sequence of _items_. A List is accessed using the _index_ of an item; that is, its place in the sequence. Lists in the PTL are realized as standard NBT lists:
```
MyList = [2.71828f,{foo:{bar:"baz"}},"minecraft:stone_button",13,13]
```
Accessing an index takes time proportional to the index.

The following operations on Lists are provided, either as functions or translatable snippets:
* `append : data modify <locale> <path-to-Self> append from <locale> <path-to-Item>`
  * Adds `<Item>` to the end of `<Self>`
* `concat : <Self> <Other> -> <Self>`
  * Appends `<Other>` onto `<Self>`, preserving its order
  * Does nothing if `<Other>` is empty
* `diff : <Self> -> <$diff>`
  * Recursively performs `Self[0] - Self[1]` until a single value is obtained in `<$diff>`
  * The value of an item is determined by its value returned via `execute store result`
* `extend : <Self> <Item> <$count> -> <Self>`
  * Appends `<$count>` copies of `<Item>` to `<Self>`
* `find : <Self> <Item> -> <$index>`
  * Finds the earliest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `get : <Self> <$index> -> <Value>`
  * Returns the `<Item>` in `<Self>` at `<$index>`
  * Does not alter `<Item>` if `<$index>` is out-of-range
* `insert : <Self> <$index> <Item> -> <Self>`
  * Inserts `<Item>` at `<$index>` in `<Self>`
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `max : <Self> -> <$max>`
  * Computes the maximum value in `<Self>` in `<$max>`
  * The value of an item is determined by its value returned via `execute store result`
* `min : <Self> -> <$min>`
  * Computes the minimum value in `<Self>` in `<$min>`
  * The value of an item is determined by its value returned via `execute store result`
* `pop : <Self> <$index> -> <Self> <Item>`
  * Removes the item specified by `<$index>` from `<Self>`, returning the shortened list
  * Does nothing if `<$index>` is out-of-range, sets `<Item>` to the deleted item otherwise
* `prepend : data modify <locale> <path-to-Self> prepend from <locale> <path-to-Item>`
  * Adds `<Item>` to the beginning of `<Self>`
* `prod : <Self> -> <$prod>`
  * Computes the product of all items in `<Self>` in `<$prod>`
  * The value of an item is determined by its value returned via `execute store result`
* `quo : <Self> -> <$quo>`
  * Recursively performs `Self[0] / Self[1]` until a single value is obtained in `<$quo>`
  * The value of an item is determined by its value returned via `execute store result`
* `reverse : <Self> -> <Self>`
  * Reverses the order of `<Self>` in-place
* `rfind : <Self> <Item> -> <$index>`
  * Finds the latest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `set : <Self> <$index> <Item> -> <Self>`
  * Sets the item at `<$index>` in `<Self>` to `<Item>`
  * Appends `<Item>` to `<Self>` if it would be placed there, does nothing otherwise
* `splice : <Self> <$start> <$end> <$step=1> -> <Spliced>`
  * Returns `<Spliced>`, a List containing all items in `<Self>` with indices from `<$start>` to `<$end>`, counted by `<$step>`
  * Does not step outside of the range of `<Self>`
  * `<$step>` must be greater than `0`; if negative traversal is required, use `reverse` first
* `sum : <Self> -> <$sum>`
  * Computes the sum of all items in `<Self>` in `<$sum>`
  * The value of an item is determined by its value returned via `execute store result`