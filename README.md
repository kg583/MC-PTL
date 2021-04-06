# MC-PTL
MC-PTL or _MC Primitive Type Library_ is a datapack of simple interfaces for common primitive data types and containers in `MCFUNCTION` code. These data types contain and rely solely on standard NBT data types, and are designed to be as lightweight as possible for streamlined integration into other datapacks.

## Interfaces

The PTL currently contains interfaces for:
* Lists
  * Ordered sequences of NBT data indexed by integers
* Maps
  * Collections of NBT values indexed by keys
* Sets
  * Collections of NBT data that contain at most one of each entry
* Vectors
  * Ordered tuples of floats representing arrows in space

Each subdirectory contains the relevant interface documentation for the given data type. Each operation is entirely self-contained, making use of a standardized input/output system. Certain operations are presented as code templates rather than complete functions due to their brevity; for example, the `length` operation available for all data types can be computed and stored in `<$score> <obj>` via
```
execute store result <$score> <obj> run data get <data-path>
```
Such snippets are preferable to the standard function system utilized by the PTL, as function parameters and returns do not need to be shuffled between various storage locations.

## Why Use the PTL?
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

If the former mode of access is all that is being done on a given container, then the PTL is not necessary; standard NBT types will be smaller and succinct in such cases as well. However, it is rare to not require access in the form of the latter in more complex code, so using the PTL should be considered as a standard format for such purposes.

The PTL also provides capabilities to easily iterate over container types, which is similarly challenging if not impossible using standard NBT types. Each type contains template code for iterating over its contents, whereby the necessary functions and operations on the data can be substituted. Iteration looks roughly like:
```
data modify storage ptl:var Current set from storage ptl:stdin <type>.Self[0]
<insert functions to operate on Current here>
data remove storage ptl:stdin <type>.Self[0]
execute if data storage ptl:stdin <type>.Self run function ptl:<type>/iterator
```

## Code Design
The PTL makes use of existing `MCFUNCTION` commands and side-effects to implement its data types. Since function parameters are not passable directly in `MCFUNCTION` code, the PTL makes use of a standardized system of scoreboard objectives and command storage locations for inputs and returns. Variables are implemented as fake player names starting with `$` in the scoreboard, which can be viewed using the appropriate scoreboard display for debugging; the preceding `$` is dropped in command storage names. Each variable is assigned to a _category_, which describes its use in PTL functions; such categories can be used in general datapack code as well to maintain consistency with PTL standards.

The following categories are used:
* `const`
  * Values which should not change during execution
    * Values should be accessible globally and established in functions tagged under `load`
  * Names should be in `$SCREAMING_SNAKE_CASE` or `POINTED.SCREAMING_SNAKE_CASE`
  * Example: `scoreboard players set $MAX_COUNT const 50`
* `stdin`
 	* Values which are inputs to a function
    * Values derived directly from inputs can also be placed in this category
    * The input data type on which to operate should be passed as `ptl:stdin <type>.Self`, which is not guaranteed to be preserved
    * Necessary inputs are assumed to exist once a function is called
 	* Names should be in `pointed.snake_case` or `Pointed.UpperCamelCase`
 	* Example: `data modify storage ptl:stdin List.Self set value [1,2,3]`
* `stdout`
 	* Values which are returned from a function
    * The modified data on which the operation was performed should be returned in `ptl:stdout <type>.Self`
    * Only input parameters which are potentially altered/explicitly returned are passed to `stdout`
 	* Names should be in `pointed.snake_case` or `Pointed.UpperCamelCase`
 	* Example: `scoreboard players get $set.is_subset stdout`
* `var`
 	* Values which can change during execution
    * There should be no expectation of a `var` variable surviving between independent function calls
 	* Names should be in `snake_case` or `UpperCamelCase`
 	* Example: `data modify storage ptl:var MyVar set value "foo"`

The PTL also works to avoid code duplication. For example, all data types are subtypes of List, meaning all List operations will function on other types; this is useful for certain common operations like `find`, but should be utilized cautiously since improper use of List operations on other types may muddle the format of the type.

## Installation
The PTL can be installed by either downloading the most recent release as a ZIP file (coming soon) and including it in the `datapacks` folder, or cloning this repository into the same `datapacks` folder so that it is always kept up-to-date. Files associated with Git are automatically ignored.
