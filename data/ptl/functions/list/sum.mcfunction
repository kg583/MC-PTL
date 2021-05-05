# list/sum
# @stdin  List.Self    The List to reduce
# @stdout $list.sum    The sum of all elements in <Self>
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $first tmp 0
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_sum
scoreboard players operation $list.sum stdout = $first tmp
