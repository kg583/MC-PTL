# list/diffl
# @stdin  List.Self    The List to reduce
# @stdout $list.diffl  The recursive reduction of <Self> by subtracting the first two elements
execute store result score $first temp run data get storage ptl:stdin List.Self[0]
execute store result score $second temp run data get storage ptl:stdin List.Self[1]
scoreboard players operation $first temp -= $second var
data remove storage ptl:stdin List.Self[0]
execute store result storage ptl:stdin List.Self[0] int 1 run scoreboard players get $first var
execute if data storage ptl:stdin List.Self[0] run function ptl:list/diffl
scoreboard players operation $list.diffl stdout = $first var
