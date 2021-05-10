scoreboard players operation $math.pow stdout *= $math.base stdin
scoreboard players remove $exp tmp 1
execute if score $exp tmp matches 1.. run function ptl:math/_pow
