# map/update
# @stdin  Map.Self  The Map to modify
# @stdin  Map.Item  The item to add
# @stdout Map.Self  <Self> with <Item> added, replacing any existing item with the same key
scoreboard players set $has_key var 0
data modify storage ptl:stdout Map.Self set value []
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/_update
execute if score $has_key var matches 0 run data modify storage ptl:stdout Map.Self append from storage ptl:stdin Map.Item
