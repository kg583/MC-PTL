# MC-PTL v0.4
MC-PTL or _Minecraft Primitive Type Library_ is a datapack of simple interfaces for common primitive data types and containers in `mcfunction` code. These data types contain and rely solely on standard NBT data types, and are designed to be as lightweight as possible for streamlined integration into other datapacks.

## Features
### Interfaces
The PTL currently contains interfaces for:
* Lists
  * Ordered sequences of NBT data indexed by integers
* Maps
  * Collections of NBT values indexed by keys
* Sets
  * Collections of NBT data that contain at most one of each entry
* Vectors
  * Ordered tuples of floats representing arrows in space

Each subdirectory contains the relevant interface documentation for the given data type in `DOCS.md`. Each function is entirely self-contained, making use of a standardized input/output system akin to standard object-oriented programming. Certain operations are presented as code templates rather than complete functions due to their brevity; for example, the `length` operation available for all data types can be computed and stored in `<$score> <obj>` via
```
execute store result <$score> <obj> run data get <data-path>
```
Such snippets are preferable to the standard function system utilized by the PTL, as function parameters and returns do not need to be shuffled between various storage locations.

### Math Library
The PTL also contains an array of useful mathematical operations on scoreboard values, including a pseudorandom number generator.

## Why Use the PTL?
### Data Access
The data types in the PTL are actually quite easy to realize using the NBT format: ordered lists already exist, maps are given by compound tags, and sets can be implemented as maps with some fixed value for every key. However, these basic implementations are only useful for _fixed_ access: accessing data that the programmer knows the contents and indices of at runtime. The PTL, meanwhile, provides _dynamic_ access for these types.

This distinction is best highlighted in the following Python snippet:
```python
my_list[3] = entry
my_dict["key"] = value
// vs
my_list[foo] = entry
my_dict[bar] = value
```
In the first line, the list entry at a specific index is being set to a given value, and in the second, a specific key in a dictionary. The latter meanwhile, have arbitrary indices and keys being accessed; that is, the values of `foo` and `bar` are not hard-coded and hence not known at runtime, and are obtained through means that might be completely dependent on a player's choice. The standard NBT format does not have support for this mode of access.

If the former mode of access is all that is being done on a given container, then the PTL is not necessary; standard NBT types will be smaller and more succinct in such cases as well. However, it is rare to not require access in the latter form in more complex code, so using the PTL should be considered as a standard format for such purposes.

### Iteration
The PTL also provides capabilities to easily iterate over container types, which is similarly challenging if not impossible using standard NBT types. Each type contains template code for iterating over its contents, whereby the necessary functions and operations on the data can be substituted. Iteration looks roughly like:
```
# my_iterator.mcfunction
data modify storage ptl:tmp Current set from storage ptl:tmp <type>[0]
<insert functions to operate on Current here>
data remove storage ptl:tmp <type>[0]
execute if data storage ptl:tmp <type>[0] run function <namespace>:my_iterator
```

Many PTL functions are essentially iterators like above; they are designated as `ptl:<type>/_<func>` for each respective type, where `<func>` is the entry point into that iterator. Entry points often do a very limited number of operations, such as clearing a list or shuffling inputs, before initiating the iterator; they might also modify return values to match expected outputs, all to ensure the standard parameter-passing format for the PTL. To this end, only entry points should ever be called; some iterators are their own entry points, in which case no `_` is prepended to the function name and the designation of that function as an entry point is maintained.

### Object-Orientation
The PTL observes an approximate form of object-orientation. This design choice is to primarily facilitate higher-level scripting capabilities and bindings, but can be utilized by standard `mcfunction` code to reduce data shuffling. See Data Categories below.

## Code Design
The PTL makes use of existing `mcfunction` commands and side-effects to implement its data types. Since function parameters are not passable directly in `mcfunction` code, the PTL makes use of a standardized system of scoreboard objectives and command storage locations for inputs and returns. Variables are implemented as fake player names starting with `$` in the scoreboard, which can be viewed using the appropriate scoreboard display for debugging; the preceding `$` is dropped in command storage names. Each variable is assigned to a _category_, which describes its use in PTL functions; such categories can be used in general datapack code as well to maintain consistency with PTL standards.

Function returns are implemented similarly, being scores or command storage locations with the same name as the function. Only one return is permitted from a function, with any additional information or side-effects conveyed by modifying the type instance.

### Data Categories
The following categories are used:
* `const`
  * Values which should not change during execution
      * Values should be accessible globally and established in functions tagged under `load`
  * Names should be in `$SCREAMING_SNAKE_CASE` or `POINTED.SCREAMING_SNAKE_CASE`
  * Example: `scoreboard players set $MAX_COUNT const 50`
* `stdin`
 	* Values which are inputs to a function
      * Necessary inputs are assumed to exist once a function is called
 	* Names should be in `pointed.snake_case` or `Pointed.UpperCamelCase`
 	* Example: `data modify storage ptl:stdin List.Item set value {NoAI:1b}`
* `stdout`
 	* Value which is returned from a function
 	* Names should be in `pointed.snake_case` or `Pointed.UpperCamelCase` and match the name of the top-level function
 	* Example: `scoreboard players get $set.subset stdout`
* `tmp`
  * Values which remain internal to function calls
      * There should be no expectation of a `tmp` value surviving between function calls
  * Names should be in `snake_case or UpperCamelCase`
  * Example: `data modify storage ptl:tmp Match set value {Key:"foo",Value:"bar"}`
* `var`
 	* Values which can be used across namespaces and may be changed freely
      * This category serves as a basis/guideline for general datapack use
      * No PTL function modifies any `var` values directly
 	* Names should be in `snake_case` or `UpperCamelCase`
 	* Example: `scoreboard players set $my_var var 42`

The following special designation is also used exclusively with command storage:
* `self`
  * The current type instance on which to operate
      * Any modifications to the instance occur in-place; otherwise, this input is unaltered
  * Names should bein `UpperCamelCase` and match the current type name
  * Example: `data modify storage ptl:self List set value [1,2,3]`

This special category is implemented to align with the object-orientation utilized by the PTL and facilitate higher-level scripting capabilities.

### Code Duplication
The PTL works to avoid code duplication. For example, all data types are subtypes of List, meaning all List operations will function on other types; this is useful for certain common operations like `find`, but should be utilized cautiously since improper use of List operations on other types may muddle the format of the type. To coerce a List into any of the other subtypes, use `<subtype>/build`; note that Maps must be built using two Lists, one for keys and one for the corresponding values.

There are some scenarios, though, where mostly redundant yet particularly specialized code is required. This is mostly seen in specific iterators, where a single scoreboard operation is the only difference between a collection of functions. Such repetition cannot be easily avoided without additional overhead, and does not greatly impact the size or performance of the PTL.

### Documentation
All member functions for data types contain Javadoc headers in their execution files, detailing all arguments, returns, and data races. Each data type also contains documentation summaries for these functions in their respective `README.md` text files, along with analogous documentation for code templates. Any member function with a ~~struck-out~~ summary has yet to be implemented or is otherwise undergoing a rewrite/bug fix.

Additional documentation can be provided by users should it be justifiably necessary.

## Installation
The PTL can be installed by either downloading the most recent release as a ZIP file (coming soon) and including it in the `datapacks` folder, or cloning this repository into the same `datapacks` folder so that it is always kept up-to-date. Files associated with Git are automatically ignored.

## Bug Reports
Any known bugs should be raised as an issue on this repository with a simple (ideally _simplest_) reproducible setup. The general functionality of PTL functions can be ascertained via the unit tests found in the `tests` folder. To perform these tests, run `/function ptl:tests/all` in a _Minecraft_ world with the PTL enabled as a datapack; the output will be the number of successful tests compared to the total number, with erroneous results recorded as they appear. To test a specific data type, use `/function ptl:tests/<type>`. Additional information is contained in the test `README.md`.

## Disclaimer
MC-PTL is in no way affiliated with _Minecraft_, Mojang Studios, Microsoft Corporation, or any of their related subsidiaries. All code elements of the PTL make use of official _Minecraft_ programming APIs and engines, and do not constitute any form of game modification. Use of the MC-PTL must fall under the _Minecraft_ EULA.
