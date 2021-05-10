# math/invpow
# @stdin  $math.num    The dividend
# @stdin  $math.base   The divisor
# @stdin  $math.exp    The number of times to divide
# @stdout $math.invpow <$num> divided by <$base> <$exp> times, rounded down each time
scoreboard players operation $math.invpow stdout = $math.num stdin
scoreboard players operation $exp tmp = $math.exp stdin
execute if score $exp tmp matches 1.. run function ptl:math/_invpow
