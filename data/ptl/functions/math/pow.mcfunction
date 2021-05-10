# math/pow
# @stdin  $math.base   The base of the exponent
# @stdin  $math.exp    The exponent to raise to
# @stdout $math.pow    <$base> raised to the <$exp>th power
scoreboard players set $math.pow stdout 0
scoreboard players operation $exp tmp = $math.exp stdin
execute if score $exp tmp matches 0.. run scoreboard players set $math.pow stdout 1
execute if score $exp tmp matches 1.. run function ptl:math/_pow
