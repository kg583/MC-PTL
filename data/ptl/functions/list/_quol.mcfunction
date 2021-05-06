execute store result score $first tmp run data get storage ptl:tmp List[0]
execute store result score $second tmp run data get storage ptl:tmp List[1]
scoreboard players operation $first tmp /= $second tmp
data remove storage ptl:tmp List[0]
execute store result storage ptl:tmp List[0] int 1 run scoreboard players get $first tmp
execute if data storage ptl:tmp List[1] run function ptl:list/_quol
