# list/diffl
# @self    List        The List to reduce
# @stdout $list.diffl  The recursive reduction of <Self> by subtracting the first two elements
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $first tmp 0
execute if data storage ptl:tmp List[0] run function ptl:list/_diffl
scoreboard players operation $list.diffl stdout = $first tmp
