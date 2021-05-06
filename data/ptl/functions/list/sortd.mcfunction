# list/sortd
# @self   List         The List to sort
data modify storage ptl:tmp List set value []
execute if data storage ptl:self List[0] run function list/_sortd
data modify storage ptl:self List set from storage ptl:tmp List
