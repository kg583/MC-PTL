scoreboard players remove $list.rfind stdout 1
data modify storage ptl:tmp Match set from storage ptl:stdin List.Item
execute store success score $diff tmp run data modify storage ptl:tmp Match set from ptl:stdin List.Self[-1]
data remove storage ptl:stdin List.Self[-1]
execute unless score $diff tmp matches 0 if data storage ptl:stdin List.Self[-1] run function ptl:list/_rfind
