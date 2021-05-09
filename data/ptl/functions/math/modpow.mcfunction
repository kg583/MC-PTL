# math/modpow
# @stdin  $math.base   The base of the exponent
# @stdin  $math.exp    The exponent to raise to
# @stdin  $math.mod    The modulus of the power
# @stdout $math.modpow <$base> raised to the <$exp>th power modulo <$mod>
scoreboard players set $pow tmp 0
scoreboard players operation $math.base stdin %= $math.mod stdin
execute if score $math.exp stdin matches 0.. run scoreboard players set $pow tmp 1
execute if score $math.exp stdin matches 1.. run function ptl:math/_modpow
scoreboard players operation $math.pow stdout = $pow tmp
