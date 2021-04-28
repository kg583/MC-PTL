# map/set
# @stdin  Map.Self  The Map to modify
# @stdin  Map.Key   The key to set
# @stdin  Map.Value The value to set
# @stdout Map.Self  <Self> with <Value> at <Key>
data modify storage ptl:stdin Map.Item.Key set from storage ptl:stdin Map.Key
data modify storage ptl:stdin Map.Item.Value set from storage ptl:stdin Map.Value
function ptl:map/update
