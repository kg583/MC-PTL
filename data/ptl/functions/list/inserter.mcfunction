data modify storage ptl:stdout List.Self append from storage ptl:stdin List.Self[0]
execute if score $list.index stdin matches 0 run data modify storage ptl:stdout List.Self append from storage ptl:stdin List.Item
data remove storage ptl:stdin List.Self[0]
scoreboard players remove $list.index stdin 1
execute if data storage ptl:stdin List.Self[0] run function ptl:list/inserter
