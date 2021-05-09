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
* `filter : <Self> <Value> -> <Self> <Filter>`
  * Returns a Map containing all items with value equal to `<Value>`
  * Removes all such items from `<Self>`
* `find : <Self> <Value> -> <Find>`
  * Finds the earliest key whose corresponding value is `<Value>`
  * Does not modify `<Find>` if `<Value>` cannot be located in `<Self>`
* `get : <Self> <Key> -> <Get>`
  * Returns the value in `<Self>` associated with `<Key>`
  * Does not modify `<Get>` if `<Key>` is not in `<Self>`
* `length : execute store result <$score> <obj> run data get <locale> <path-to-Self>`
  * Stores the length of `<Self>` in `<$score> <obj>`
* `keys : data get <locale> <path-to-Self>[].Key`
  * Returns the keys of `<Self>` as a List
* `merge : <Self> <Other> -> <Self>`
  * Combines the maps `<Self>` and `<Other>` into a single map
  * If both `<Self>` and `<Other>` contain the same key, values from `<Other>` take precedence
* `pop : <Self> <Key> -> <Self> <Pop>`
  * Removes the item specified by `<Key>` from `<Self>`, returning the reduced map
  * Does nothing if `<Key>` is not in `<Self>`, and sets `<Pop>` to the corresponding value otherwise
* `set : <Self> <Key> <Value> -> <Self>`
  * Sets the value of `<Key>` in `<Self>` to `<Value>`
  * If the `<Key>` does not exist in `<Self>`, it is added (to the end)
* `update : <Self> <Item> -> <Self>`
  * Adds `<Item>` to `<Self>`, replacing the value of `<Item.Key>` with `<Item.Value>` if it exists
  * If `<Item>` does not exist in `<Self>`, it is added (to the end)
* `values : data get <locale> <path-to-Self>[].Value`
  * Returns the values of `<Self>` as a List
