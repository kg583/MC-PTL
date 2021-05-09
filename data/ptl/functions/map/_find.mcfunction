data modify storage ptl:tmp Match set from storage ptl:stdin Map.Value
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:tmp Map[0].Value
execute if score $diff tmp matches 0 run data modify storage ptl:stdout Map.Find set from storage ptl:tmp Map[0].Key
data remove storage ptl:tmp Map[0]
execute unless score $diff tmp matches 0 if storage ptl:tmp Map[0] run function ptl:map/_find
