data modify storage ptl:tmp Match set from storage ptl:stdin Map.Item.Key
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:tmp Map[0].Key
data modify storage ptl:self Map append from ptl:tmp Map[0]
execute if score $diff tmp matches 0 run scoreboard players set $has_key tmp 1
execute if score $diff tmp matches 0 run data modify storage ptl:self Map[-1].Value set from storage ptl:stdin Map.Item.Value
data remove storage ptl:tmp Map[0]
execute if data storage ptl:tmp Map[0] run function ptl:map/_update
