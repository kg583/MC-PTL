execute store result score $current tmp run data get storage ptl:stdin Vector.Self[0]
scoreboard players operation $current tmp *= $current tmp
scoreboard players operation $vector.norm stdout += $current tmp
data remove storage ptl:stdin Vector.Self[0]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_norm
