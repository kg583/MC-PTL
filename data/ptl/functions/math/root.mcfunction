# math/root
# @stdin  $math.num    The radicand
# @stdin  $math.n      The root to take
# @stdout $math.root   The <$n>th root of the absolute value of <$num>, rounded down
scoreboard players set $math.root stdout 0
execute unless score $math.num stdin matches 0.. run scoreboard players operation $math.num stdin *= $-1 const
execute if score $math.num matches 1 run scoreboard players set $math.root stdout 1
execute if score $math.n stdin matches 1 run scoreboard players operation $math.root stdout = $math.num stdin
execute if score $math.n stdin matches 2.. run function ptl:math/_root_init
