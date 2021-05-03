scoreboard players operation $current temp = $math.n stdin
scoreboard players add $current temp 1
scoreboard players operation $current temp -= $math.r stdin
scoreboard players operation $math.perms stdout *= $current temp
scoreboard players remove $math.r stdin 1
execute if score $math.r stdin matches 1.. run function ptl:math/_perm
