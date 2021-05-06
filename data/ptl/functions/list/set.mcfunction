# list/set
# @self   List         The List to modify
# @stdin  $list.index  The index to set
# @stdin  List.Item    The item to set to
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:self List set value []
execute store result $length tmp run data get ptl:tmp List
scoreboard players operation $list.index stdin %= $length tmp
execute if data storage ptl:tmp List[0] run function ptl:list/_set
execute if score $list.index stdin matches 0 run data modify storage ptl:self List append from storage ptl:stdin List.Item
