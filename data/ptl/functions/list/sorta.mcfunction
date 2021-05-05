# list/sorta
# @stdin  List.Self    The List to sort
# @stdout List.Self    <Self> sorted in ascending order
data modify storage ptl:tmp Sorted set value []
execute if data storage ptl:stdin List.Self[0] run function list/_sorta
data modify storage ptl:stdout List.Self set from storage ptl:tmp Sorted
