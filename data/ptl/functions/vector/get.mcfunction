# vector/get
# @stdin  Vector.Self    The Vector to retrieve from
# @stdin  $vector.index  The index to retrieve
# @stdout $vector.coord  The coordinate of <Self> at <$index>
data modify storage ptl:stdin List.Self set from storage ptl:stdin Vector.Self
scoreboard players operation $list.index stdin = $vector.index stdin
function ptl:list/get
execute store result score $vector.coord stdout run data get storage ptl:stdout List.Item
