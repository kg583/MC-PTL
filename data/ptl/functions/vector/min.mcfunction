# vector/min
# @self   Vector          The Vector to search
# @stdout $vector.min     The minimum value in <Self>
data modify storage ptl:self List set from storage ptl:self Vector
function ptl:list/min
execute store result score $vector.max stdout run data get storage ptl:stdout List.Min
