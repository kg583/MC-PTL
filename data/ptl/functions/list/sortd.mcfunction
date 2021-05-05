# list/sortd
# @stdin  List.Self    The List to sort
# @stdout List.Self    <Self> sorted in descending order
data modify storage ptl:tmp Sorted set value []
execute if data storage ptl:stdin List.Self[0] run function list/_sortd
data modify storage ptl:stdout List.Self set from storage ptl:tmp Sorted
