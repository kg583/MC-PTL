# list/max
# @stdin  List.Self    The List to search
# @stdout $list.max    The maximum principal value in <Self>
scoreboard players set $list.max stdout -2147483648
execute if data storage ptl:stdin List.Self[0] run function ptl:list/max_finder
