data modify storage ptl:temp Match set from storage ptl:stdin Set.Item
execute store success score $diff temp run data modify storage ptl:temp Match set from storage ptl:stdin Set.Self[0]
data modify storage ptl:stdout Set.Self append from ptl:stdin Set.Self[0]
execute if score $diff temp matches 0 run scoreboard players set $has_item temp 1
data remove storage ptl:stdin Set.Self[0]
execute if data storage ptl:stdin Set.Self[0] run function ptl:set/_add
