scoreboard players operation $current tmp = $math.n stdin
scoreboard players add $current tmp 1
scoreboard players operation $current tmp -= $math.r stdin
scoreboard players operation $math.perm stdout *= $current tmp
scoreboard players remove $math.r stdin 1
execute if score $math.r stdin matches 1.. run function ptl:math/_perm
