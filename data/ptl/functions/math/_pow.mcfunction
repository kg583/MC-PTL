scoreboard players operation $pow tmp *= $math.base stdin
scoreboard players remove $math.exp stdin 1
execute if score $math.exp stdin matches 1.. run function ptl:math/_pow
