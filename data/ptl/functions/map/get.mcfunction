# map/get
# @self   Map          The Map to search
# @stdin  Map.Key      The key to acquire
# @stdout Map.Value    The value corresponding to <Key> in <Self>
data modify storage ptl:tmp Map set from storage ptl:self Map
data modify storage ptl:tmp Match set from storage ptl:stdin Map.Key
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:tmp Map[0].Key
execute if score $diff tmp matches 0 run data modify storage ptl:stdout Map.Value set from storage ptl:tmp Map[0].Value
data remove storage ptl:tmp Map[0]
execute unless score $diff tmp matches 0 if data storage ptl:tmp Map[0] run function ptl:map/get
