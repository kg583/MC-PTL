# vector/max
# @self   Vector          The Vector to search
# @stdout $vector.max     The maximum value in <Self>
data modify storage ptl:self List set from storage ptl:self Vector
function ptl:list/max
execute store result score $vector.max stdout run data get storage ptl:stdout List.Max
