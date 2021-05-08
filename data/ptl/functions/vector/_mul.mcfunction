execute store result score $current tmp run data get storage ptl:tmp Vector[0]
execute store result score $other tmp run data get storage ptl:stdin Vector.Other[0]
execute store success score $success tmp run data get storage ptl:stdin Vector.Other[0]
execute if score $success tmp matches 1 run scoreboard players operation $current tmp *= $other tmp
execute store result storage ptl:tmp Result run scoreboard players get $current tmp
data modify storage ptl:self Vector append from storage ptl:tmp Result
data remove storage ptl:tmp Vector[0]
data remove storage ptl:stdin Vector.Other[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_mul
