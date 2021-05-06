# list/find
# @self   List         The List to search
# @stdin  List.Item    The item to search for
# @stdout $list.find   The first index of <Item> in <Self> if it exists, -1 otherwise
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $list.find stdout -1
execute if data storage ptl:tmp List run function ptl:list/_find
execute unless score $diff tmp matches 0 run scoreboard players set $list.find stdout -1
