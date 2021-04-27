scoreboard players set $diff var 1
data modify storage ptl:stdout Map.Self set value []
execute if data storage ptl:stdin Map.Self if data storage ptl:stdin Map.Key run function ptl:map/deleter