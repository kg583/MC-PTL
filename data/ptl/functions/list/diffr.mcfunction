# list/diffr
# @stdin  List.Self    The List to reduce
# @stdout $list.diffr  The recursive reduction of <Self> by subtracting the last two elements
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $penultimate tmp 0
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_diffr
scoreboard players operation $list.diffr stdout = $penultimate tmp
