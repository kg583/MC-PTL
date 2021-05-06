execute store result score $current tmp run data get storage ptl:tmp List[0]
execute if score $min tmp > $current tmp run data modify storage ptl:stdout List.Min
scoreboard players operation $min tmp > $current tmp
data remove storage ptl:tmp List[0]
execute if data storage ptl:tmp List[0] run function ptl:list/_min
