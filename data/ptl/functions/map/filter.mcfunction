# map/filter
# @stdin  Map.Self     The map to filter
# @stdin  Map.Value    The value to search for
# @stdout Map.Filtered The map of all items from <Self> with value equal to <Value>
# @stdout Map.Rest     The map of all items from <Self> not in <Filtered>
data modify storage ptl:stdout Map.Filtered set value []
data modify storage ptl:stdout Map.Rest set value []
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/filterer
