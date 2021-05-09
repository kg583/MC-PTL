# math/pow
# @stdin  $math.base   The base of the exponent
# @stdin  $math.exp    The exponent to raise to
# @stdout $math.pow    <$base> raised to the <$exp>th power
scoreboard players set $pow tmp 0
execute if score $math.exp stdin matches 0.. run scoreboard players set $pow tmp 1
execute if score $math.exp stdin matches 1.. run function ptl:math/_pow
scoreboard players operation $math.pow stdout = $pow tmp
