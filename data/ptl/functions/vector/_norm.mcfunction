execute store result score $current tmp run data get storage ptl:tmp Vector[0]
scoreboard players operation $current tmp *= $current tmp
scoreboard players operation $vector.norm stdout += $current tmp
data remove storage ptl:tmp Vector[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_norm
