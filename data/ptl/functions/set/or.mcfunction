# set/and
# @stdin  Set.Self   The initial Set
# @stdin  Set.Other  The Set to union
# @stdout Set.Or     The Set containing all items in <Self> or <Other>
data modify storage ptl:stdin Set.Item set from storage ptl:stdin Set.Other[0]
function ptl:set/add
data modify storage ptl:stdin Set.Self set from storage ptl:stdout Set.Self
execute if data storage ptl:stdin Set.Other[0] run function ptl:set/or
data modify storage ptl:stdout Set.Or set from storage ptl:stdin Set.Self
