data modify storage ptl:stdin Map.Item set from storage ptl:stdin Map.Other[0]
data modify storage ptl:stdin Map.Self set from storage ptl:stdout Map.Merge
function ptl:map/update
data modify storage ptl:stdout Map.Merge set from storage ptl:stdout Map.Self
data remove storage ptl:stdin Map.Other[0]
execute if data storage ptl:stdin Map.Other[0] run function ptl:map/_merge
