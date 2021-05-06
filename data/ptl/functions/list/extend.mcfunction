# list/extend
# @self   List         The List to extend
# @stdin  List.Item    The item with which to extend the List
# @stdin  $list.count  The number of items to add
execute if score $list.count stdin matches 1.. run data modify storage ptl:self List append from storage ptl:stdin List.Item
scoreboard players remove $list.count stdin 1
execute if score $list.count stdin matches 1.. run function ptl:list/extend
