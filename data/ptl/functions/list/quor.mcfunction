# list/quor
# @stdin  List.Self    The List to reduce
# @stdout $list.quor  The recursive reduction of <Self> by taking the quotient of the last two elements
execute store result score $ultimate tmp run data get storage ptl:stdin List.Self[-1]
execute store result score $penultimate tmp run data get storage ptl:stdin List.Self[-2]
scoreboard players operation $penultimate tmp /= $ultimate tmp
data remove storage ptl:stdin List.Self[-1]
execute store result storage ptl:stdin List.Self[-1] int 1 run scoreboard players get $penultimate tmp
execute if data storage ptl:stdin List.Self[-1] run function ptl:list/quor
scoreboard players operation $list.quor stdout = $penultimate tmp
