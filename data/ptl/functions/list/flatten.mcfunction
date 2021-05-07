# list/flatten
# @self   List         The List to flatten
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:self List set value []
execute if data storage ptl:tmp List[0] run function ptl:list/_flatten
