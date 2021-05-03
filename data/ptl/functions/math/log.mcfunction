# math.log
# @stdin  $math.num    The number to find the logarithm of
# @stdin  $math.base   The base of the logarithm
# @stdout $math.log    The logarithm of <$num> with base <$base>, rounded down
scoreboard players set $math.log stdout -2147483648
execute if score $math.num stdin matches 1 if score $math.base matches 1.. run scoreboard players set $math.log stdout 0
execute if score $math.num stdin matches 2.. if score $math.base stdin matches 2.. run scoreboard players set $math.log stdout -1
execute if score $math.num stdin matches 2.. if score $math.base stdin matches 2.. run function ptl:math/_log
