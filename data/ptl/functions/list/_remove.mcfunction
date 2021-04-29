scoreboard players add $list.index stdout 1
data modify storage ptl:var Match set from storage ptl:stdin List.Item
execute store success score $diff var run data modify storage ptl:var Match set from ptl:stdin List.Self[0]
execute unless score $diff var matches 0 run data modify storage ptl:stdout List.Self append from storage ptl:stdin List.Self[0]
data remove storage ptl:stdin List.Self[0]
execute unless score $diff var matches 0 if data storage ptl:stdin List.Self[0] run function ptl:list/_remove
execute unless score $diff var matches 0 run scoreboard players set $list.index stdout -1
