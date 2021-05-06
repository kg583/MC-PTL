execute if score $list.index stdin matches 0 run data modify storage ptl:self List append from storage ptl:stdin List.Item
execute unless score $list.index stdin matches 0 run data modify storage ptl:self List append from storage ptl:tmp List[0]
data remove storage ptl:tmp List[0]
scoreboard players remove $list.index stdin 1
execute if data storage ptl:tmp List[0] run function ptl:list/_set
