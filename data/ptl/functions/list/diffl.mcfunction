# list/diffl
# @stdin  List.Self    The List to reduce
# @stdout $list.diffl  The recursive reduction of <Self> by subtracting the first two elements
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $first tmp 0
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_diffl
scoreboard players operation $list.diffl stdout = $first tmp
