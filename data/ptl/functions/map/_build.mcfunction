data modify storage ptl:stdin Map.Item.Key set from storage ptl:stdin Map.Keys[0]
data modify storage ptl:stdin Map.Item.Value set from storage ptl:stdin Map.Values[0]
function ptl:map/update
data remove storage ptl:stdin Map.Keys[0]
data remove storage ptl:stdin Map.Values[0]
execute if data storage ptl:stdin Map.Keys[0] run function ptl:map/_build
