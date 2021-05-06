execute store result score $current tmp run data get storage ptl:tmp List[0]
execute if score $max tmp > $current tmp run data modify storage ptl:stdout List.Max
scoreboard players operation $max tmp > $current tmp
data remove storage ptl:tmp List[0]
execute if data storage ptl:tmp List[0] run function ptl:list/_max
