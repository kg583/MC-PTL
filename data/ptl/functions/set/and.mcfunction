# set/and
# @stdin  Set.Self   The initial Set
# @stdin  Set.Other  The Set to intersect
# @stdout Set.And    The Set containing all items in both <Self> and <Other>
data modify storage ptl:stdout Set.And set value []
execute if data storage ptl:stdin Set.Self[0] if data storage ptl:stdin Set.Other[0] run function ptl:set/and_finder
