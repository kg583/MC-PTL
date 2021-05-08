# vector/get
# @self   Vector         The Vector to retrieve from
# @stdin  $vector.index  The index to retrieve
# @stdout $vector.get    The coordinate of <Self> at <$index>
data modify storage ptl:self List set from storage ptl:self List
scoreboard players operation $list.index stdin = $vector.index stdin
function ptl:list/get
execute store result score $vector.get stdout run data get storage ptl:stdout List.Item
