execute store result score $math.base stdin run data get storage ptl:stdin Vector.Self[0]
scoreboard players operation $math.exp = $vector.exp stdin
function ptl:math/pow
execute store result storage ptl:tmp Result run scoreboard players get $math.power stdout
data modify storage ptl:stdout Vector.Self append from storage ptl:tmp Result
data remove storage ptl:stdin Vector.Self[0]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_pow
