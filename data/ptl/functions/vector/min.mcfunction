# vector/min
# @stdin  Vector.Self    The Vector to search
# @stdout $vector.min     The minimum value in <Self>
data modify storage ptl:stdin List.Self set from storage ptl:stdin Vector.Self
function ptl:list/min
execute store result score $vector.max stdout run data get storage ptl:stdout List.Min
