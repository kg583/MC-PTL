data modify storage ptl:stdin Map.Self set from storage ptl:stdout Map.Self
data modify storage ptl:stdin Map.Key set from storage ptl:stdin Map.Keys[0]
data modify storage ptl:stdin Map.Value set from storage ptl:stdin Map.Values[0]
function ptl:map/set
data remove storage ptl:stdin Map.Keys[0]
data remove storage ptl:stdin Map.Values[0]
execute if data storage ptl:stdin Map.Keys[0] run function ptl:map/builder
