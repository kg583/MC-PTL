scoreboard players set $diff var 1
data modify storage ptl:stdout Map.Filtered set value []
data modify storage ptl:stdout Map.Rest set value []
data modify storage ptl:stdout Map.Self set from storage ptl:stdin Map.Self
execute if data storage ptl:stdin Map.Self if data storage ptl:stdin Map.Value run function ptl:map/filterer