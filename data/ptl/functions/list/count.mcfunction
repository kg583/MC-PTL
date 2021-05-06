# list/count
# @self   List         The List to analyze
# @stdin  List.Item    The item to count
# @stdout $list.count  The number of occurrences of <Item> in <Self>
data modify storage ptl:tmp Count set from storage ptl:self List
execute store result score $list.count stdout run data get storage ptl:tmp Count
execute store result score $changed tmp run data modify storage ptl:tmp Count[] set from storage ptl:stdin List.Item
scoreboard players operation $list.count stdout -= $changed tmp
