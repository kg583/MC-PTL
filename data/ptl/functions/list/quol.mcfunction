# list/quol
# @stdin  List.Self    The List to reduce
# @stdout $list.quol  The recursive reduction of <Self> by taking the quotient of the first two elements
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
scoreboard players set $first tmp 1
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_quol
scoreboard players operation $list.quol stdout = $first tmp
