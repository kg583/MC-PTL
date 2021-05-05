function ptl:list/max
data modify storage ptl:tmp Sorted append from storage ptl:stdout List.Max
data modify storage ptl:stdin List.Self set from storage ptl:stdout List.Self
data modify storage ptl:stdin List.Item set from storage ptl:stdout List.Min
function ptl:list/remove
data modify storage ptl:stdin List.Self set from storage ptl:stdout List.Self
execute if data storage ptl:stdin List.Self[0] run function list/_sortd
