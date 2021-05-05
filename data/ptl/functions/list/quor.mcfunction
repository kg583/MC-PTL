# list/quor
# @stdin  List.Self    The List to reduce
# @stdout $list.quor  The recursive reduction of <Self> by taking the quotient of the last two elements
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $penultimate tmp 1
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_quol
scoreboard players operation $list.quor stdout = $penultimate tmp
