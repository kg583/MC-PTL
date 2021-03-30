# MC-PTL
MC-PTL or _MC Primitive Type Library_ is a datapack of simple interfaces for common primitive data types in MCFUNCTION code. These data types contain and rely solely on standard NBT data types, and are designed to be as lightweight as possible for streamlined integration into other datapacks.

The PTL currently contains interfaces for:
* Lists
  * Ordered sequences of NBT data of arbitrary length, indexed by integers
  * Also known as arrays
* Maps
  * Collections of `(key, value)` pairs, indexed by keys
  * Keys and values are themselves NBT types
  * Also known as dictionaries or associative arrays
* Sets
  * Collections of NBT data that contain at most one of each entry
* Tuples
  * Ordered sequences of NBT data of fixed length, indexed by integers

Each subdirectory contains the relevant interface documentation for the given data type. In particular, all data types contain a `length` method for obtaining the number of entries, and all methods run in `O(length)` time.
