data modify storage ptl:stdin List.Other set from storage ptl:tmp List[0]
function ptl:list/concat
data remove storage ptl:tmp List[0]
execute if data storage ptl:tmp List[0] run function ptl:list/_flatten
