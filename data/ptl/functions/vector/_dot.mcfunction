execute store result score $current temp run data get storage ptl:stdin Vector.Self[0]
execute store result score $other temp run data get storage ptl:stdin Vector.Other[0]
scoreboard players operation $current temp *= $other var
scoreboard players operation $vector.dot stdout += $current var
data remove storage ptl:stdin Vector.Self[0]
data remove storage ptl:stdin Vector.Other[0]
execute if data storage ptl:stdin Vector.Self[0] if data storage ptl:stdin Vector.Other[0] run function ptl:vector/_dot