data modify storage ptl:var Match set from storage ptl:stdin Map.Key
execute store success score $diff var run data modify storage ptl:var Match set from storage ptl:stdin Map.Self[0].Key
data modify storage ptl:stdout Map.Self append from ptl:stdin Map.Self[0]
execute if score $diff var matches 0 run scoreboard players set $has_key var 1
execute if score $diff var matches 0 run data modify storage ptl:stdout Map.Self[-1] set from storage ptl:stdin Map.Value
data remove storage ptl:stdin Map.Self[0]
execute if data storage ptl:stdin Map.Self run function ptl:map/setter