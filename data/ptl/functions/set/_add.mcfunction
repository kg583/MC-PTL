data modify storage ptl:tmp Match set from storage ptl:stdin Set.Item
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:stdin Set.Self[0]
data modify storage ptl:stdout Set.Self append from ptl:stdin Set.Self[0]
execute if score $diff tmp matches 0 run scoreboard players set $has_item tmp 1
data remove storage ptl:stdin Set.Self[0]
execute if data storage ptl:stdin Set.Self[0] run function ptl:set/_add
