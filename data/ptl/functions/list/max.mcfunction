# list/max
# @self   List         The List to search
# @stdout List.Max     The maximal value in <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $max tmp -2147483648
execute if data storage ptl:tmp List[0] run function ptl:list/_max
