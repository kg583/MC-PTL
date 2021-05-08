# vector/set
# @self   Vector         The Vector to modify
# @stdin  $vector.index  The index to set
# @stdin  $vector.coord  The coordinate to set to
data modify storage ptl:self List set from storage ptl:self Vector
scoreboard players operation $list.index stdin = $vector.index stdin
execute store result storage ptl:stdin List.Item int 1 run scoreboard players get $vector.coord stdin
function ptl:list/set
data modify storage ptl:self Vector set from storage ptl:self List
