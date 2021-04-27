# list/min
# @stdin  List.Self    The List to search
# @stdout $list.min    The minimum principal value in <Self>
scoreboard players set $list.min stdout 2147483647
execute if data storage ptl:stdin List.Self[0] run function ptl:list/min_finder
