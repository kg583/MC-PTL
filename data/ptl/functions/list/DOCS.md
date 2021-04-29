# Lists

A _List_ is an ordered type which stores data as an adjustable sequence of _items_. A List is accessed using the _index_ of an item; that is, its place in the sequence. Lists in the PTL are realized as standard NBT lists:
```
MyList = [2.71828f,{foo:{bar:"baz"}},"minecraft:stone_button",13,13]
```
Accessing an index takes time proportional to the index; other operations take time proportional to the length of the List.

The following operations on Lists are provided, either as functions or translatable snippets:
* `append : data modify <locale> <path-to-Self> append from <locale> <path-to-Item>`
  * Adds `<Item>` to the end of `<Self>`
* `concat : <Self> <Other> -> <Self>`
  * Appends `<Other>` onto `<Self>`, preserving its order
  * Does nothing if `<Other>` is empty
* `count : <Self> <Item> -> <$count>`
  * Counts the number of occurrences of `<Item>` in `<Self>`
* `diffl : <Self> -> <$diffl>`
  * Recursively performs `Self[0] - Self[1]` until a single value is obtained in `<$diffl>`
  * The value of an item is determined by its value returned via `execute store result`
* `diffr : <Self> -> <$diffl>`
  * Recursively performs `Self[-2] - Self[-1]` until a single value is obtained in `<$diffr>`
  * The value of an item is determined by its value returned via `execute store result`
* `extend : <Self> <Item> <$count> -> <Self>`
  * Appends `<$count>` copies of `<Item>` to `<Self>`
* `find : <Self> <Item> -> <$index>`
  * Finds the earliest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `get : <Self> <$index> -> <Item>`
  * Returns the `<Item>` in `<Self>` at `<$index>`
  * Does not alter `<Item>` if `<$index>` is out-of-range
* `insert : <Self> <$index> <Item> -> <Self>`
  * Inserts `<Item>` at `<$index>` in `<Self>`
  * Appends `<Item>` to `<Self>` if it would be placed there, does nothing otherwise
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `max : <Self> -> <$max>`
  * Computes the maximum value in `<Self>` in `<$max>`
  * The value of an item is determined by its value returned via `execute store result`
* `min : <Self> -> <$min>`
  * Computes the minimum value in `<Self>` in `<$min>`
  * The value of an item is determined by its value returned via `execute store result`
* `pop : <Self> <$index> -> <Self> <Item>`
  * Deletes the item specified by `<$index>` from `<Self>`, returning the shortened list
  * Does nothing if `<$index>` is out-of-range, sets `<Item>` to the deleted item otherwise
* `prepend : data modify <locale> <path-to-Self> prepend from <locale> <path-to-Item>`
  * Adds `<Item>` to the beginning of `<Self>`
* `prod : <Self> -> <$prod>`
  * Computes the product of all items in `<Self>` in `<$prod>`
  * The value of an item is determined by its value returned via `execute store result`
* `quol : <Self> -> <$quol>`
  * Recursively performs `Self[0] / Self[1]` until a single value is obtained in `<$quol>`
  * The value of an item is determined by its value returned via `execute store result`
* `quor : <Self> -> <$quol>`
  * Recursively performs `Self[-1] / Self[-2]` until a single value is obtained in `<$quor>`
  * The value of an item is determined by its value returned via `execute store result`
* `remove : <Self> <Item> -> <Self> <$index>`
  * Removes the first instance of `<Item>` in `<Self>` and returns its `<$index>`
  * Does nothing if `<Item>` is not present in `<Self>`
  * More efficient than `find` and `pop` chained together
* `reverse : <Self> -> <Self>`
  * Reverses the order of `<Self>`
* `rfind : <Self> <Item> -> <$index>`
  * Finds the latest `<$index>` of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `set : <Self> <$index> <Item> -> <Self>`
  * Sets the item at `<$index>` in `<Self>` to `<Item>`
  * Appends `<Item>` to `<Self>` if it would be placed there, does nothing otherwise
* ~~`sorta : <Self> -> <Self>`~~
  * ~~Sorts `<Self>` in ascending order~~
  * ~~The value of an item is determined by its value returned via `execute store result`~~
* ~~`sortd : <Self> -> <Self>`~~
  * ~~Sorts `<Self>` in descending order
  * ~~The value of an item is determined by its value returned via `execute store result`~~
* `splice : <Self> <$start> <$end> <$step> -> <Spliced>`
  * Returns `<Spliced>`, a List containing all items in `<Self>` with indices from `<$start>` to `<$end>`, counted by `<$step>`
  * Does not step outside of the range of `<Self>`
* `sum : <Self> -> <$sum>`
  * Computes the sum of all items in `<Self>` in `<$sum>`
  * The value of an item is determined by its value returned via `execute store result`
