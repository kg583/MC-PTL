# set/add
# @stdin  Set.Self  The Set to modify
# @stdin  Set.Item  The item to add
# @stdout Set.Self  <Self> with <Item> added if it is not already present
scoreboard players set $has_item var 0
data modify storage ptl:stdout Set.Self set value []
execute if data storage ptl:stdin Set.Self[0] run function ptl:set/adder
execute if score $has_item var matches 0 run data modify storage ptl:stdout Set.Self append from storage ptl:stdin Set.Item