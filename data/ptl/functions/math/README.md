# Math Functions

Math functions are operations on scoreboard values which offer extended support for more complex mathematical calculations. All arithmetic is done on the integer values expressible on the scoreboard, which have maximum magnitudes of ~2 billion in either sign. Math functions do not check for potential overflow in this range, and cannot return any other related errors such as divide-by-zero.

The following mathematical operations are provided, either as functions or translatable snippets:
* `abs : execute unless score <$score> <obj> matches 0.. run scoreboard players operation <$score> <obj> *= $-1 const`
  * Sets the value of `<$score> <obj>` to its absolute value
* `combo : <$n> <$r> -> <$combo>`
  * Computes the binomial coefficient `nCr`, the number of ways to choose `<$r>` things from `<$n>` options independent of order
  * More efficient than arithmetic on `fact`
* `copysign : <$num> <$sign> -> <$copysign>`
  * Sets the sign of `<$num>` to match that of `<$sign>`
  * The sign of the return matches that of `sign`
* `det : <$a> <$b> <$c> <$d> -> <$det>`
  * Computes the determinant of the 2x2 matrix `[[a b][c d]]`
* `fact : <$num> -> <$fact>`
  * Computes the factorial of `<$num>`
* `invpow : <$num> <$base> <$exp> -> <$invpow>`
  * Computes `<$num>` after floored division by `<$base>` `<$exp>` times
* `length : <$num> -> <$length>`
  * Computes the number of digits in the string representation of `<$num>`, accounting for sign
* `log : <$num> <$base> -> <$log>`
  * Computes the logarithm of `<$num>` with base `<$base>`, rounded down
* `modpow : <$base> <$exp> <$mod> -> <$modpow>`
  * Computes `<$base>` raised to the `<$exp>`th power modulo `<$mod>`
  * Cannot overflow if `<$mod>` is less than 2^15
* `perm : <$n> <$r> -> <$perm>`
  * Computes `nPr`, the number of ways to choose `<$r>` things from `<$n>` options considering order
  * More efficient than arithmetic on `fact`
* `pow : <$base> <$exp> -> <$pow>`
  * Computes `<$base>` raised to the `<$exp>`th power
* ~~`root : <$num> <$n> -> <$root>`~~
  * ~~Computes the `<$n>`th root of the absolute value of `<$num>`, rounded down~~
* `sign : <$num> -> <$sign>`
  * Returns the sign of `<$num>`
  * The sign is `1` if `<$num>` is postive, `0` if `<$num>` is zero, and `-1` otherwise
* ~~`sqrt : <$num> -> <$sqrt>`~~
  * ~~Computes the square root of the absolute value of `<$num>`, rounded down~~
