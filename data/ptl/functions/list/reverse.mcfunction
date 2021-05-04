# list/reverse
# @stdin  List.Self    The List to reverse
# @stdout List.Self    The reverse of <Self>
scoreboard players operation $list.index tmp = $list.index stdin
data modify storage ptl:stdout List.Self set value []
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_reverse
