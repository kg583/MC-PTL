data modify storage ptl:stdin Set.Item set from storage ptl:stdin Set.List[0]
function ptl:set/add
data remove storage ptl:stdin Set.List[0]
execute if storage ptl:stdin Set.List[0] run function ptl:set/_build
