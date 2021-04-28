data modify storage ptl:var Match set from storage ptl:stdin Map.Key
execute store success score $diff var run data modify storage ptl:var Match set from storage ptl:stdin Map.Self[0]
execute if score $diff var matches 0 run data modify storage ptl:stdout Map.Value set from storage ptl:stdin Map.Self[0].Value
execute unless score $diff var matches 0 run data modify storage ptl:stdout Map.Self append from storage ptl:stdin Map.Self[0]
data remove storage ptl:stdin Map.Self[0]
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/popper
