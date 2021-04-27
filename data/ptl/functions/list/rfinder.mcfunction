scoreboard players remove $list.index stdout 1
data modify storage ptl:var Match set from storage ptl:stdin List.Item
execute store success score $diff var run data modify storage ptl:var Match set from ptl:stdin List.Self[-1]
data remove storage ptl:stdin List.Self[-1]
execute unless score $diff var matches 0 if data storage ptl:stdin List.Self[-1] run function ptl:list/rfinder
