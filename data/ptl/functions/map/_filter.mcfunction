data modify storage ptl:tmp Match set from storage ptl:stdin Map.Value
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:stdin Map.Self[0].Value
execute if score $diff tmp matches 0 run data modify storage ptl:stdout Map.Filter append from storage ptl:stdin Map.Self[0]
execute unless score $diff tmp matches 0 run data modify storage ptl:stdout Map.Self append from storage ptl:stdin Map.Self[0]
data remove storage ptl:stdin Map.Self[0]
execute unless score $diff tmp matches 0 if data storage ptl:stdin Map.Self[0] run function ptl:map/_filter
