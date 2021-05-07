data modify storage ptl:self List set from storage ptl:tmp Set
data modify storage ptl:stdin List.Item set from storage ptl:stdin Set.Other[0]
function ptl:stdin/list/remove
execute if score $list.index stdout matches 0.. run data modify storage ptl:self Set append from storage ptl:stdin Set.Other[0]
data remove storage ptl:stdin Set.Other[0]
data modify storage ptl:tmp Set from storage ptl:self List
execute if data storage ptl:tmp Set[0] if data storage ptl:stdin Set.Other[0] run function ptl:set/_and
