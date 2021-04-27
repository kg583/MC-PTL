# list/prod
# @stdin  List.Self    The List to reduce
# @stdout $list.prod  The product of all elements in <Self>
execute store result score $first var run data get storage ptl:stdin List.Self[0]
execute store result score $second var run data get storage ptl:stdin List.Self[1]
scoreboard players operation $first var *= $second var
data remove storage ptl:stdin List.Self[0]
execute store result storage ptl:stdin List.Self[0] int 1 run scoreboard players get $first var
execute if data storage ptl:stdin List.Self[0] run function ptl:list/prod
scoreboard players operation $list.prod stdout = $first var
