execute store result score $current temp run data get storage ptl:stdin List.Self[0]
scoreboard players operation $list.min stdout < $current var
data remove storage ptl:stdin List.Self[0]
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_min