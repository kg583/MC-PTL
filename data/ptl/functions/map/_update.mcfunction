data modify storage ptl:temp Match set from storage ptl:stdin Map.Item.Key
execute store success score $diff temp run data modify storage ptl:temp Match set from storage ptl:stdin Map.Self[0].Key
data modify storage ptl:stdout Map.Self append from ptl:stdin Map.Self[0]
execute if score $diff temp matches 0 run scoreboard players set $has_key temp 1
execute if score $diff temp matches 0 run data modify storage ptl:stdout Map.Self[-1].Value set from storage ptl:stdin Map.Item.Value
data remove storage ptl:stdin Map.Self[0]
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/_update
