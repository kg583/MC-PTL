# list/min
# @self   List         The List to search
# @stdout List.Min     The minimal value in <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $min tmp 2147483647
execute if data storage ptl:tmp List[0] run function ptl:list/_min
