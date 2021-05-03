scoreboard players operation $math.num stdin /= $math.base stdin
scoreboard players add $math.log stdout 1
execute if score $math.num stdin matches 1.. stdin run function ptl:math/_log
