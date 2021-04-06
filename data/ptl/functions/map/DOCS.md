# Maps

A _Map_ is an unordered type which stores data as `(key, value)` pairs called _items_. A Map is accessed using such a _key_, whence the corresponding _value_ is returned. Maps in the PTL are realized as an NBT list of composite tags:
```
MyMap = [{Key:7,Value:"baz"},{Key:"foo",Value:"bar"},{Key:{Nested:1b},Value:3.14f}]
```
Note that, since lists are ordered, Maps are technically ordered as well; thus, an item can be accessed using its literal index, and the existence of an item in a Map can be determined by finding this literal index. This is also implies that keys are not hashed, meaning that accessing a value is not necessarily done in constant time; practically, though, this is of little concern.

The following operations on Maps are provided, either as functions or translatable snippets:
* `build : <Keys> <Values> -> <Self>`
  * Creates a map `<Self>` pairing `<Keys>` to `<Values>` in order
  * If duplicate keys are provided, the last value is used
  * If more values than keys are provided, the extra values are ignored
* `filter : <Self> <Value> -> <Filtered> <Rest>`
  * Returns two maps: `<Filtered>`, containing all items with value equal to `<Value>`, and `<Rest>`, containing the rest of `<Self>`
  * Either of `<Filtered>` and `<Rest>` may be empty
* `get : <Self> <Key> -> <Value>`
  * Returns the `<Value>` in `<Self>` associated with `<Key>`
  * Does not alter `<Value>` if `<Key>` is not in `<Self>`
* `find : <Self> <Item> -> <$index>`
  * Finds the `<$index>` of `<Item>` in `<Self>` treated as a List
  * Returns `-1` if `<Item>` is not in `<Self>`
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `keys : data get <locale> <path-to-Self>[].Key`
  * Returns the keys of `<Self>` as a List
* `merge : <Self> <Other> -> <Self>`
  * Combines the maps `<Self>` and `<Other>` into a single map
  * If both `<Self>` and `<Other>` contain the same key, values from `<Other>` take precedence
* `pop : <Self> <Key> -> <Self> <Value>`
  * Removes the item specified by `<Key>` from `<Self>`, returning the reduced map
  * Does nothing if `<Key>` is not in `<Self>`, and sets `<Value>` to the corresponding value otherwise
* `set : <Self> <Item> <Key=Item.Key> <Value=Item.Value> -> <Self>`
  * Sets the value of `<Key>` in `<Self>` to `<Value>`
  * `<Key>` and `<Value>` are derived from `<Item>` if it exists
  * If the item does not exist in `<Self>`, it is added (to the end)
* `values : data get <locale> <path-to-Self>[].Value`
  * Returns the values of `<Self>` as a List
