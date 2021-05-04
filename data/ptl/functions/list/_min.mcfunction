execute store result score $current tmp run data get storage ptl:stdin List.Self[0]
execute if score $min tmp > $current tmp run data modify storage ptl:stdout List.Min
scoreboard players operation $min tmp > $current tmp
data remove storage ptl:stdin List.Self[0]
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_min
