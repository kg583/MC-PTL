scoreboard players set $init tmp 31
scoreboard players operation $init tmp /= $math.n stdin
scoreboard players set $math.base stdin 2
function ptl:math/pow
scoreboard players operation $math.root stdout = $math.pow stdout
scoreboard players operation $math.root stdout *= $2 const
scoreboard players operation $math.exp stdin = $math.n stdin
scoreboard players remove $math.exp stdin 1
function ptl:math/_root
