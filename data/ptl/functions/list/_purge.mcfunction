data modify storage ptl:tmp Match set from storage ptl:stdin List.Item
execute store success score $diff tmp run data modify storage ptl:tmp Match set from ptl:tmp List[0]
execute unless score $diff tmp matches 0 run data modify storage ptl:self List append from storage ptl:tmp List[0]
data remove storage ptl:tmp List[0]
execute if data storage ptl:tmp List[0] run function ptl:list/_purge
