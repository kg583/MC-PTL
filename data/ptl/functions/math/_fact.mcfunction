scoreboard players operation $math.fact stdout *= $math.num stdin
scoreboard players remove $math.num stdin 1
execute if score $math.num stdin matches 1.. run function ptl:math/_fact
