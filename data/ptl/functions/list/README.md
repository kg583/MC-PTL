# Lists

A _List_ is an ordered type which stores data as a mutable sequence of _items_. A List is accessed using the _index_ of an item; that is, its place in the sequence. Lists in the PTL are realized as standard NBT lists:
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
* `diffr : <Self> -> <$diffr>`
  * Recursively performs `Self[-2] - Self[-1]` until a single value is obtained in `<$diffr>`
* `extend : <Self> <Item> <$count> -> <Self>`
  * Appends `<$count>` copies of `<Item>` to `<Self>`
* `find : <Self> <Item> -> <$find>`
  * Finds the earliest index of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `flatten : <Self> -> <Self>`
  * Flattens `<Self>` by concatenating all internal sublists
  * Every item in `<Self>` is assumed to itself be a List
* `get : <Self> <$index> -> <Get>`
  * Returns the item in `<Self>` at `<$index>`
  * Does not alter `<Get>` if `<$index>` is out-of-range
* `insert : <Self> <$index> <Item> -> <Self>`
  * Inserts `<Item>` at `<$index>` in `<Self>`
  * Appends `<Item>` to `<Self>` if it would be placed there, does nothing otherwise
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `max : <Self> -> <Max>`
  * Computes the maximum value in `<Self>`
  * If `<Self>` is empty, the minimum integer score is returned
* `min : <Self> -> <Min>`
  * Computes the minimum value in `<Self>`
  * If `<Self>` is empty, the maximum integer score is returned
* `pop : <Self> <$index> -> <Self> <Pop>`
  * Deletes the item specified by `<$index>` from `<Self>`, returning the shortened list
  * Does nothing if `<$index>` is out-of-range, sets `<Pop>` to the deleted item otherwise
* `prepend : data modify <locale> <path-to-Self> prepend from <locale> <path-to-Item>`
  * Adds `<Item>` to the beginning of `<Self>`
* `prod : <Self> -> <$prod>`
  * Computes the product of all items in `<Self>` in `<$prod>`
* `purge : <Self> <Item> -> <Self>`
  * Removes all instances of `<Item>` in `<Self>`
  * More efficient than repeated `remove`
* `quol : <Self> -> <$quol>`
  * Recursively performs `Self[0] / Self[1]` until a single value is obtained in `<$quol>`
* `quor : <Self> -> <$quor>`
  * Recursively performs `Self[-1] / Self[-2]` until a single value is obtained in `<$quor>`
* `remove : <Self> <Item> -> <Self> <$remove>`
  * Removes the first instance of `<Item>` in `<Self>` and returns its index
  * Does nothing if `<Item>` is not present in `<Self>`
  * More efficient than `find` and `pop` chained together
* `reverse : <Self> -> <Self>`
  * Reverses the order of `<Self>`
* `rfind : <Self> <Item> -> <$rfind>`
  * Finds the latest index of `<Item>` in `<Self>`
  * Returns `-1` if `<Item>` is not in `<Self>`
* `set : <Self> <$index> <Item> -> <Self>`
  * Sets the item at `<$index>` in `<Self>` to `<Item>`
  * Appends `<Item>` to `<Self>` if it would be placed there, does nothing otherwise
* `sorta : <Self> -> <Self>`
  * Sorts `<Self>` in ascending order utilizing selection sort
* `sortd : <Self> -> <Self>`
  * Sorts `<Self>` in descending order utilizing selection sort
* `slice : <Self> <$start> <$end> <$step> -> <Slice>`
  * Returns a List containing all items in `<Self>` with indices from `<$start>` to `<$end>`, counted by `<$step>`
  * Does not step outside of the range of `<Self>`
* `sum : <Self> -> <$sum>`
  * Computes the sum of all items in `<Self>` in `<$sum>`

If `<Self>` is not listed as a return, it is always unaltered during execution. Any conversion from/interpretation of List items to/as numeric values is done via `execute store result`.
