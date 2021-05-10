scoreboard players operation $math.base stdin = $math.root stdout
scoreboard players operation $math.root stdout *= $math.exp stdin
function ptl:math/invpow
scoreboard players operation $math.root stdout += $math.invpow stdout
scoreboard players operation $math.root stdout /= $math.n stdin
execute if score $math.root stdout < $math.base stdin run function ptl:math/_root
