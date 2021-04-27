data modify storage ptl:var Match set from storage ptl:stdin Map.Key
execute store success score $diff var run data modify storage ptl:var Match set from storage ptl:stdin Map.Self[0].Key
execute if score $diff var matches 1 run data modify storage ptl:stdout Map.Self append from storage ptl:stdin Map.Self[0]
data remove storage ptl:stdin Map.Self[0]
execute if data storage ptl:stdin Map.Self run function ptl:map/deleter