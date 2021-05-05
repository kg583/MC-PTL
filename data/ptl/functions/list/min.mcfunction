# list/min
# @stdin  List.Self    The List to search
# @stdout List.Min     The minimal value in <Self>
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $min tmp 2147483647
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_min
