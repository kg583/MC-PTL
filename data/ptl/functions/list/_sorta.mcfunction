function ptl:list/min
data modify storage ptl:tmp List append from storage ptl:stdout List.Min
data modify storage ptl:stdin List.Item set from storage ptl:stdout List.Min
function ptl:list/remove
execute if data storage ptl:self List[0] run function list/_sorta
