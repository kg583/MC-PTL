function ptl:list/max
data modify storage ptl:tmp List append from storage ptl:stdout List.Max
data modify storage ptl:stdin List.Item set from storage ptl:stdout List.Max
function ptl:list/remove
execute if data storage ptl:self List[0] run function list/_sortd
