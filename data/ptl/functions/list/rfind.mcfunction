# list/rfind
# @stdin  List.Self    The List to search
# @stdin  List.Item    The item to search for
# @stdout $list.index  The last index of <Item> in <Self> if it exists, -1 otherwise
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
execute store result $list.rfind stdout run data get storage ptl:stdin List.Self
scoreboard players remove $list.rfind stdout 1
execute if data storage ptl:stdin List.Self[-1] run function ptl:list/_rfind
