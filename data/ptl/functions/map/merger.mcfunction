data modify storage ptl:stdin Map.Item set from storage ptl:stdin Map.Other[0]
function ptl:map/set
data modify storage ptl:stdin Map.Self set from storage ptl:stdout Map.Self
data remove storage ptl:stdin Map.Other[0]
execute if data storage ptl:stdin Map.Other run function ptl:map/merger