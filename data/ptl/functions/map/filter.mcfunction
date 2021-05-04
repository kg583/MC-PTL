# map/filter
# @stdin  Map.Self     The Map to filter
# @stdin  Map.Value    The value to search for
# @stdout Map.Self     <Self> with all items with value equal to <Value> removed
# @stdout Map.Fiilter  The Map of all items from <Self> with value equal to <Value>
data modify storage ptl:stdout Map.Filter set value []
data modify storage ptl:stdout Map.Self set value []
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/_filter
