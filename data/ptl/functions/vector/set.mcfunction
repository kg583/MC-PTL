# vector/set
# @stdin  Vector.Self    The Vector to modify
# @stdin  $vector.index  The index to set
# @stdin  $vector.coord  The coordinate to set to
# @stdout Vector.Self    <Self> with <$coord> at <$index>
data modify storage ptl:stdin List.Self set from storage ptl:stdin Vector.Self
scoreboard players operation $list.index stdin = $vector.index stdin
execute store result storage ptl:stdin List.Item int 1 run scoreboard players get $vector.coord stdin 
function ptl:list/set
execute store result score $vector.coord stdout run data get storage ptl:stdout List.Item
