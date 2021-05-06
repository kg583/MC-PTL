# list/rfind
# @self   List         The List to search
# @stdin  List.Item    The item to search for
# @stdout $list.index  The last index of <Item> in <Self> if it exists, -1 otherwise
data modify storage ptl:tmp List set from storage ptl:self List
execute store result $list.rfind stdout run data get storage ptl:tmp List
scoreboard players remove $list.rfind stdout 1
execute if data storage ptl:tmp List[-1] run function ptl:list/_rfind
