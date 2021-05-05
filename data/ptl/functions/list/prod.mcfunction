# list/prod
# @stdin  List.Self    The List to reduce
# @stdout $list.prod  The product of all elements in <Self>
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $first tmp 1
execute if data storage ptl:stdin List.Self[0] run function ptl:list/prod
scoreboard players operation $list.prod stdout = $first tmp
