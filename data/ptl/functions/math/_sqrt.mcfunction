scoreboard players operation $sqrt tmp = $math.sqrt stdout
scoreboard players operation $a tmp = $math.num stdin
scoreboard players operation $a tmp /= $math.sqrt stdout
scoreboard players operation $math.sqrt stdout += $a tmp
scoreboard players operation $math.sqrt stdout /= $2 const
execute if score $math.root stdout < $sqrt tmp run function ptl:math/_sqrt
