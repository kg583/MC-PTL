scoreboard players remove $list.rfind stdout 1
data modify storage ptl:tmp Match set from storage ptl:stdin List.Item
execute store success score $diff tmp run data modify storage ptl:tmp Match set from ptl:tmp List[-1]
data remove storage ptl:tmp List[-1]
execute unless score $diff tmp matches 0 if data storage ptl:tmp List[-1] run function ptl:list/_rfind
