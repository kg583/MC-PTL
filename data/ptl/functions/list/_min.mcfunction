execute store result score $current tmp run data get storage ptl:stdin List.Self[0]
scoreboard players operation $list.min stdout < $current tmp
data remove storage ptl:stdin List.Self[0]
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_min
