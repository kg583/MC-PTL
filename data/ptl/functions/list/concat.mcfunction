# list/concat
# @self   List         The List to concatenate onto
# @stdin  List.Other   The List to concatenate
data modify storage ptl:self List append from storage ptl:stdin List.Other[0]
data remove storage ptl:stdin List.Other[0]
execute if data storage ptl:stdin List.Other[0] run function ptl:list/concat
