# math/expand
# @stdin  $math.num    The number to expand
# @stdin  $math.base   The base of the digit expansion
# @stdout Math.Expand  The digits of the absolute value of <$num> in base <$num> as a Vector
data modify storage ptl:stdout Math.Expand set value [I;]
execute unless score $math.num stdin matches 0.. run scoreboard players operation $math.num stdin *= $-1 const
execute if score $math.base matches 2.. run function ptl:math/_expand
