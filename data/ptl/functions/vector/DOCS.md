# Vectors

A _Vector_ is an ordered type which stores data as a fixed sequence of _coordinates_, integer values representing motion or direction in space. A Vector is accessed using the _index_ of a coordinate; that is, its place in the sequence. Vectors in the PTL are realized as standard NBT int arrays:
```
MyVector = [I;23,51,-999]
```
Accessing an index takes time proportional to the index. Ints are signed 32-bit integral types, and thus have a maximum magnitude of ~2 billion with either sign.

The following operations on Lists are provided, either as functions or translatable snippets:
* `addc : <Self> <$value> -> <Self>`
  * Adds `<$value>` to every coordinate of `<Self>`
* `addv : <Self> <Other> -> <Self>`
  * Performs coordinate-wise addition between `<Self>` and `<Other>`, extending `<Other>` with zeroes if necessary
  * If `<Other>` is longer than `<Self>`, extra values are ignored
* `cross : <Self> <Other> -> <Cross>`
  * Computes the cross product between `<Self>` and `<Other>` in `<Cross>`
  * Does nothing if both Vectors are not 3-dimensional
* `cube : <Self> -> <Self>`
  * Cubes each coordinate in `<Self>`
* `divc : <Self> <$value> -> <Self>`
  * Divides each coordinate in `<Self>` by `<$value>`
* `divv : <Self> <Other> -> <Self>`
  * Performs coordinate-wise division between `<Self>` and `<Other>`, extending `<Other>` with ones if necessary
  * If `<Other>` is longer than `<Self>`, extra values are ignored
* `dot : <Self> <Other> -> <$dot>`
  * Computes the dot product of `<Self>` and `<Other>` in `<$dot>`
* `extend : <Self> <$value> <$count> -> <Self>`
  * Appends `<$count>` copies of `<$value>` to `<Self>`
* `get : <Self> <$index> -> <Self> <$coord>`
  * Returns the `<$coord>` in `<Self>` at `<$index>`
  * Does not alter `<$coord>` if `<$index>` is out-of-range
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `max : <Self> -> <$max>`
  * Computes the maximum value in `<Self>` in `<$max>`
  * The value of an item is determined by its value returned via `execute store result`
* `min : <Self> -> <$min>`
  * Computes the minimum value in `<Self>` in `<$min>`
  * The value of an item is determined by its value returned via `execute store result`
* `mulc : <Self> <$value> -> <Self>`
  * Multiplies `<$value>` with every coordinate of `<Self>`
* `mulv : <Self> <Other> -> <Self>`
  * Performs coordinate-wise multiplication between `<Self>` and `<Other>`, extending `<Other>` with ones if necessary
  * If `<Other>` is longer than `<Self>`, extra values are ignored
* `neg : <Self> -> <Self>`
  * Negates every entry in `<Self>`
* `norm : <Self> -> <$norm>`
  * Computes the squared norm of `<Self>`
* `prod : <Self> -> <$prod>`
  * Computes the product of all coordinates in `<Self>` in `<$prod>`
  * The value of an item is determined by its value returned via `execute store result`
* `set : <Self> <$index> <$coord> -> <Self>`
  * Sets the item at `<$index>` in `<Self>` to `<$coord>`
  * Appends `<$coord>` to `<Self>` if it would be placed there, does nothing otherwise
* `square : <Self> -> <Self>`
  * Squares each coordinate in `<Self>`
* `subc : <Self> <$value> -> <Self>`
  * Subtracts `<$value>` from every coordinate of `<Self>`
* `subv : <Self> <Other> -> <Self>`
  * Performs coordinate-wise subtraction between `<Self>` and `<Other>`, extending `<Other>` with zeroes if necessary
  * If `<Other>` is longer than `<Self>`, extra values are ignored
* `sum : <Self> -> <$sum>`
  * Computes the sum of all coordinates in `<Self>` in `<$sum>`
  * The value of an item is determined by its value returned via `execute store result`
