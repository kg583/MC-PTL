# list/purge
# @self   List         The List to purge
# @stdin  List.Item    The item to purge
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:self List set value []
execute if data storage ptl:tmp List run function list/_purge
