scoreboard players remove $list.index stdout 1
data modify storage ptl:temp Match set from storage ptl:stdin List.Item
execute store success score $diff temp run data modify storage ptl:temp Match set from ptl:stdin List.Self[-1]
data remove storage ptl:stdin List.Self[-1]
execute unless score $diff temp matches 0 if data storage ptl:stdin List.Self[-1] run function ptl:list/_rfind
