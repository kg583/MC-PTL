scoreboard players operation $math.exp stdin = $exp tmp
function ptl:math/pow
execute store result score $current tmp run data get storage ptl:tmp Vector[0]
scoreboard players operation $math.pow stdout *= $current tmp
scoreboard players operation $vector.poly stdout += $math.pow stdout
scoreboard players add $exp tmp 1
data remove storage ptl:tmp Vector[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_poly
