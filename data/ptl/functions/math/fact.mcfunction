# math/fact
# @stdin  $math.num    The number to find the factorial of
# @stdout $math.fact   The factorial of <$num>
scoreboard players set $math.fact stdout 1
execute if score $math.num matches 2.. run function ptl:math/_fact
