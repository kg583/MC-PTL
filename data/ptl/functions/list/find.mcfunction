# list/find
# @stdin  List.Self    The List to search
# @stdin  List.Item    The item to search for
# @stdout $list.index  The first index of <Item> in <Self> if it exists, -1 otherwise
scoreboard players set $list.index stdout -1
execute if data storage ptl:stdin List.Self[0] run function ptl:list/finder
