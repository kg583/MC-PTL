execute store result score $current temp run data get storage ptl:stdin Vector.Self[0]
execute store result score $other temp run data get storage ptl:stdin Vector.Other[0]
scoreboard players operation $current temp += $other var
execute store result storage ptl:temp Result run scoreboard players get $current var
data modify storage ptl:stdout Vector.Self append from storage ptl:temp Result
data remove storage ptl:stdin Vector.Self[0]
data remove storage ptl:stdin Vector.Other[0]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_add
