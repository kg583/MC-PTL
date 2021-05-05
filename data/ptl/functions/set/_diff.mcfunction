data modify storage ptl:stdin List.Item set from storage ptl:stdin Set.Other[0]
function ptl:list/remove
data modify storage ptl:stdin List.Self set from storage ptl:stdout List.Self
data remove storage ptl:stdin Set.Other[0]
execute if data storage ptl:stdin Set.Other[0] run function ptl:set/_diff
