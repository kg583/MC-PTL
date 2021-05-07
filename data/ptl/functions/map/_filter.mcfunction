data modify storage ptl:tmp Match set from storage ptl:stdin Map.Value
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:tmp Map[0].Value
execute if score $diff tmp matches 0 run data modify storage ptl:stdout Map.Filter append from storage ptl:tmp Map[0]
execute unless score $diff tmp matches 0 run data modify storage ptl:self Map append from storage ptl:tmp Map[0]
data remove storage ptl:tmp Map[0]
execute if data storage ptl:tmp Ma[0] run function ptl:map/_filter
