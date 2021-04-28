data modify storage ptl:stdin List.Self set from storage ptl:stdin Set.Other
data modify storage ptl:stdin List.Item set from storage ptl:stdin Set.Self[0]
function ptl:stdin/list/remove
execute if score $list.index stdout matches 0.. run data modify storage ptl:stdout Set.And append from storage ptl:stdin Set.Self[0]
data remove storage ptl:stdin Set.Self[0]
data modify storage ptl:stdin Set.Other set from storage ptl:stdout List.Self
execute if data storage ptl:stdin Set.Self[0] if data storage ptl:stdin Set.Other[0] run function ptl:set/and_finder
