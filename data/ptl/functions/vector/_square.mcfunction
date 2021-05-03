execute store result score $current temp run data get storage ptl:stdin Vector.Self[0]
scoreboard players operation $current temp *= $current temp
execute store result storage ptl:temp Result run scoreboard players get $current temp
data modify storage ptl:stdout Vector.Self append from storage ptl:temp Result
data remove storage ptl:stdin Vector.Self[0]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_pow
