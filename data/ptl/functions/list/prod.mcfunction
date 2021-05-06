# list/prod
# @self   List        The List to reduce
# @stdout $list.prod  The product of all elements in <Self>
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $first tmp 1
execute if data storage ptl:tmp List[0] run function ptl:list/_prod
scoreboard players operation $list.prod stdout = $first tmp
