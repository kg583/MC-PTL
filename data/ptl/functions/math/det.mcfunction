# math/det
# @stdin  $math.a      Entry 1,1
# @stdin  $math.b      Entry 1,2
# @stdin  $math.c      Entry 2,1
# @stdin  $math.d      Entry 2,2
# @stdout $math.det    The determinant of the matrix [[a b][c d]]
scoreboard players operation $math.det stdout = $math.a stdin
scoreboard players operation $math.det stdout *= $math.d stdin
scoreboard players operation $other tmp = $math.b stdin
scoreboard players operation $other tmp *= $math.c stdin
scoreboard players operation $math.det stdout -= $other tmp
