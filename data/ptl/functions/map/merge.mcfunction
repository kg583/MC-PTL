# map/merge
# @stdin  Map.Self     The Map to merge into
# @stdin  Map.Other    The Map to merge from
# @stdout Map.Merged   The Map all items in <Self> and <Other>, with values from <Other> taking precedence
data modify storage ptl:stdout Map.Merged set from storage ptl:stdin Map.Self
execute if data storage ptl:stdin Map.Other[0] run function ptl:map/merger
