execute store result score $current tmp run data get storage ptl:tmp Vector[0]
scoreboard players set $negated tmp 0
scoreboard players operation $negated tmp -= $current tmp
execute store result storage ptl:tmp Result run scoreboard players get $negated tmp
data modify storage ptl:self Vector append from storage ptl:tmp Result
data remove storage ptl:tmp Vector[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_neg
