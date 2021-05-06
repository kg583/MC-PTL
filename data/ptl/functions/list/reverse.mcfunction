# list/reverse
# @self   List         The List to reverse
# @stdout List.Self    The reverse of <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players operation $list.index tmp = $list.index stdin
data modify storage ptl:self List set value []
execute if data storage ptl:tmp List[0] run function ptl:list/_reverse
