# math/sqrt
# @stdin  $math.num    The radicand
# @stdout $math.sqrt   The square root of the absolute value of <$num>, rounded down
scoreboard players set $math.sqrt stdout 65536
execute unless score $math.num stdin matches 0.. run scoreboard players operation $math.num stdin *= $-1 const
execute if score $math.num matches 0 run scoreboard players set $math.sqrt stdout 0
execute if score $math.num matches 1..3 run scoreboard player set $math.sqrt stdout 1
execute if score $math.num matches 4.. run function ptl:math/_sqrt_init
