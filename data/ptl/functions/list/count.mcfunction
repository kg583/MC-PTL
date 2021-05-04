# list/count
# @stdin  List.Self    The List to analyze
# @stdin  List.Item    The item to count
# @stdout $list.count  The number of occurrences of <Item> in <Self>
execute store result score $list.count stdout run data get storage ptl:stdin List.Self
execute store result score $changed tmp run data modify storage ptl:stdin List.Self[] set from storage ptl:stdin List.Item
scoreboard players operation $list.count stdout -= $changed var
