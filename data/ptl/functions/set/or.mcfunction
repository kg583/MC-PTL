# set/and
# @self   Set        The initial Set
# @stdin  Set.Other  The Set to union
data modify storage ptl:stdin Set.Item set from storage ptl:stdin Set.Other[0]
function ptl:set/add
execute if data storage ptl:stdin Set.Other[0] run function ptl:set/or
