# list/quol
# @self   List        The List to reduce
# @stdout $list.quol  The recursive reduction of <Self> by taking the quotient of the first two elements
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $first tmp 1
execute if data storage ptl:tmp List[0] run function ptl:list/_quol
scoreboard players operation $list.quol stdout = $first tmp
