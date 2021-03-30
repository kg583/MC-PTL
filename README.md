# MC-PTL
MC-PTL or _MC Primitive Type Library_ is a datapack of simple interfaces for common primitive data types in `MCFUNCTION` code. These data types contain and rely solely on standard NBT data types, and are designed to be as lightweight as possible for streamlined integration into other datapacks.

## Interfaces

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

## Code Design
The PTL makes use of existing `MCFUNCTION` commands and side-effects to implement its data types. Since function parameters are not passable directly in `MCFUNCTION` code, the PTL makes use of a standardized scoreboard system of scores and objectives for inputs and returns. Variable names are implemented as fake player names starting with `$`, which can be viewed using the appropriate scoreboard display for debugging.

The following objectives are used:
* `const`
  * Values which should not change during execution
  * Names should be in `SCREAMING_SNAKE_CASE`
  * Example: `scoreboard players set $MAX_COUNT const 50`
* `error`
  * Codes indicating errors; should be `0` if a function returns successfully
  * Names should be in `pointed.snake_case`, corresponding to the function that errored
  * Example: `scoreboard players set $map.filter error 1`
* `stdin`
 	* Values which are inputs to a function
 	* Names should be in `pointed.snake_case`
 	* Example: `scoreboard players set $list.index stdin 4`
* `stdout`
 	* Values which are returned from a function
 	* Names should be in `pointed.snake_case`, corresponding to the function that is returning
 	* Example: `scoreboard players get $set.length stdout`
* `var`
 	* Values which can change during execution
 	* Names should be in `snake_case`
 	* Example: `scoreboard players add $my_var var 2`

If an input or output is NBT data rather than an integer, a similar schema is utilized using command storage.
* Function parameters
 	* `data modify storage ptl:map Map set from storage my_pack:my_storage MyMap`
 	* `data modify storage ptl:map Key set value "foo"`
* Function returns
 	* `data get storage ptl:map Value`
 	* `data modify storage my_pack:my_storage MyMap set from storage ptl:map Filtered`

Note that naming conventions vary slightly with NBT data, as the standard is `UpperCamelCase` (or rarely `lowerCamelCase`). Storage locations follow the same conventions as socreboard names without the initial `$`. As always, everything is appropriately namespaced.

## Installation
The PTL can be installed by either downloading the most recent release as a ZIP file (coming soon) and including it in the `datapacks` folder, or cloning this repository into the same `datapacks` folder so that it is always kept up-to-date. Files associated with Git are automatically ignored.
