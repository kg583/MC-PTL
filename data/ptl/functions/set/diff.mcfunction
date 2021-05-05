# set/diff
# @stdin  Set.Self   The initial Set
# @stdin  Set.Other  The Set to subtract
# @stdout Set.Diff   The Set with all items in <Other> removed from <Self> if they are present
data modify storage ptl:stdout Set.Self set from storage ptl:stdin Set.Self
data modify storage ptl:stdin List.Self set from storage ptl:stdin Set.Self
execute if data storage ptl:stdin Set.Other[0] run function ptl:set/_diff
data modify storage ptl:stdout Set.Diff set from storage ptl:stdin List.Self
