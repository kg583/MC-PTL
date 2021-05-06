# list/diffr
# @self    List        The List to reduce
# @stdout $list.diffr  The recursive reduction of <Self> by subtracting the last two elements
data modify storage ptl:tmp List set from storage ptl:self List
scoreboard players set $penultimate tmp 0
execute if data storage ptl:tmp List[-1] run function ptl:list/_diffr
scoreboard players operation $list.diffr stdout = $penultimate tmp
