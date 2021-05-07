# map/filter
# @self   Map          The Map to filter
# @stdin  Map.Value    The value to search for
# @stdout Map.Self     <Self> with all items with value equal to <Value> removed
# @stdout Map.Filter   The Map of all items from <Self> with value equal to <Value>
data modify storage ptl:stdout Map.Filter set value []
data modify storage ptl:tmp Map set from storage ptl:self Map
data modify storage ptl:self Map set value []
execute if data storage ptl:tmp Map[0] run function ptl:map/_filter
