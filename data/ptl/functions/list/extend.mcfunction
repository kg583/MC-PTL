# list/extend
# @stdin  List.Self    The List to extend
# @stdin  List.Item    The item with which to extend the List
# @stdin  $list.count  The number of items to add
# @stdout List.Self    <Self> extended with <$count> copies of <Item>
execute if score $list.count stdin matches 1.. run data modify storage ptl:stdin List.Self append from storage ptl:stdin List.Item
data modify storage ptl:stdout List.Self set from store ptl:stdin List.Self
scoreboard players remove $list.count stdin 1
execute if score $list.count stdin matches 1.. run function ptl:list/extend
