# vector/get
# @stdin  Vector.Self    The Vector to retrieve from
# @stdin  $vector.index  The index to retrieve
# @stdout $vector.get   The coordinate of <Self> at <$index>
data modify storage ptl:stdin List.Self set from storage ptl:stdin Vector.Self
scoreboard players operation $list.index stdin = $vector.index stdin
function ptl:list/get
execute store result score $vector.get stdout run data get storage ptl:stdout List.Item
