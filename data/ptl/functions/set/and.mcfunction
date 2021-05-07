# set/and
# @self   Set        The initial Set
# @stdin  Set.Other  The Set to intersect
data modify storage ptl:tmp Set set from storage ptl:self Set
data modify storage ptl:self Set set value []
execute if data storage ptl:tmp Set[0] if data storage ptl:stdin Set.Other[0] run function ptl:set/_and
