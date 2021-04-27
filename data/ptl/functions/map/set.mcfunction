scoreboard players set $diff var 0
scoreboard players set $has_key var 0
data modify storage ptl:stdout Map.Self set value []
execute unless data Map.Item.Key run data modify storage ptl:stdin Map.Item.Key set from storage ptl:stdin Map.Key
execute unless data Map.Item.Value run data modify storage ptl:stdin Map.Item.Value set from storage ptl:stdin Map.Value
execute if data storage ptl:stdin Map.Self if data storage ptl:stdin Map.Item run function ptl:map/setter
execute if score $has_key var matches 0 run data modify storage ptl:stdout Map.Self append from storage ptl:stdin Map.Item