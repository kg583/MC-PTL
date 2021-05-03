# math.modpow
# @stdin  $math.base   The base of the exponent
# @stdin  $math.exp    The exponent to raise to
# @stdin  $math.mod    The modulus of the power
# @stdout $math.pow    <$base> raised to the <$exp>th power modulo <$mod>
scoreboard players set $math.pow stdout 0
scoreboard players operation $math.base stdin %= $math.mod stdin
execute if score $math.exp stdin matches 0.. run scoreboard players set $math.pow stdout 1
execute if score $math.exp stdin matches 1.. run function ptl:math/_modpow
