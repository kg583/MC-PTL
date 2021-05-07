# set/add
# @self   Set       The Set to modify
# @stdin  Set.Item  The item to add
scoreboard players set $has_item tmp 0
data modify storage ptl:tmp Set set from storage ptl:self Set
data modify storage ptl:self Set set value []
execute if data storage ptl:tmp Set[0] run function ptl:set/_add
execute if score $has_item tmp matches 0 run data modify storage ptl:self Set append from storage ptl:stdin Set.Item
