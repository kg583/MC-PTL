# map/merge
# @self   Map          The Map to merge into
# @stdin  Map.Other    The Map to merge with
data modify storage ptl:stdin Map.Item set from storage ptl:stdin Map.Other[0]
function ptl:map/update
data remove storage ptl:stdin Map.Other[0]
execute if data storage ptl:stdin Map.Other[0] run function ptl:map/merge
