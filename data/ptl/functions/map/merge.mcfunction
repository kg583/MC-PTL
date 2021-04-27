data modify storage ptl:stdout Map.Other set from storage ptl:stdin Map.Other
execute if data storage ptl:stdin Map.Self if data storage ptl:stdin Map.Other run function ptl:map/merger