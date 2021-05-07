# map/update
# @self   Map       The Map to modify
# @stdin  Map.Item  The item to add
scoreboard players set $has_key tmp 0
data modify storage ptl:tmp Map set from storage ptl:self Map
data modify storage ptl:self Map set value []
execute if data storage ptl:tmp Map[0] run function ptl:map/_update
execute if score $has_key tmp matches 0 run data modify storage ptl:self Map append from storage ptl:stdin Map.Item
