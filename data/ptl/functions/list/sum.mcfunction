# list/sum
# @self   List         The List to reduce
# @stdout $list.sum    The sum of all elements in <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $first tmp 0
execute if data storage ptl:tmp List[0] run function ptl:list/_sum
scoreboard players operation $list.sum stdout = $first tmp
