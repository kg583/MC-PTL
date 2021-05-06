# list/quor
# @self   List        The List to reduce
# @stdout $list.quor  The recursive reduction of <Self> by taking the quotient of the last two elements
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $penultimate tmp 1
execute if data storage ptl:tmp List[-1] run function ptl:list/_quol
scoreboard players operation $list.quor stdout = $penultimate tmp
