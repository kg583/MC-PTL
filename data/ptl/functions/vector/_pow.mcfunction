execute store result score $math.base stdin run data get storage ptl:tmp Vector[0]
scoreboard players operation $math.exp = $vector.exp stdin
function ptl:math/pow
execute store result storage ptl:tmp Result run scoreboard players get $math.pow stdout
data modify storage ptl:self Vector append from storage ptl:tmp Result
data remove storage ptl:tmp Vector[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_pow
