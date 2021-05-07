# set/diff
# @self   Set        The initial Set
# @stdin  Set.Other  The Set to subtract
# @stdout Set.Diff   The Set with all items in <Other> removed from <Self> if they are present
data modify storage ptl:self List set from storage ptl:self Set
execute if data storage ptl:stdin Set.Other[0] run function ptl:set/_diff
data modify storage ptl:stdout Set.Diff set from storage ptl:self List
