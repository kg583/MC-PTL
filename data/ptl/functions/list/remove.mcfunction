# list/remove
# @self   List         The List to remove from
# @stdin  List.Item    The item to remove
# @stdout $list.remove The first index of <Item> in <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $list.remove stdout -1
data modify storage ptl:self List set value []
execute if data storage ptl:tmp List run function list/_remove
execute unless score $diff tmp matches 0 run scoreboard players set $list.remove stdout -1
