# list/set
# @stdin  List.Self    The List to modify
# @stdin  $list.index  The index to set
# @stdin  List.Item    The item to set to
# @stdout List.Self    <Self> with <Item> at <$index>
data modify storage ptl:stdout List.Self set value []
execute store result $length tmp run data get ptl:stdin List.Self
scoreboard players operation $list.index stdin %= $length var
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_set
execute if score $list.index stdin matches 0 run data modify storage ptl:stdout List.Self append from storage ptl:stdin List.Item
