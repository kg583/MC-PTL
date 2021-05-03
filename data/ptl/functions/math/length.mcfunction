# math.length
# @stdin  $math.num    The number to find the length of
# @stdout $math.length The length of <$num> as it would be display as a string
scoreboard players set $math.base stdin 10
scoreboard players set $math.length stdout 1
execute unless score $math.num stdin matches 0.. run scoreboard players add $math.length stdout 1
execute unless score $math.num stdin matches 0.. run scoreboard players operation $math.num *= $NEG const
function ptl:math/log
execute unless score $math.num stdin matches 0 run scoreboard players operation $math.length stdout += $math.log stdout
