# vector/extend
# @self   Vector         The Vector to extend
# @stdin  $vector.value  The value to extend with
# @stdin  $vector.count  The amount to extend by
data modify storage ptl:self List set from storage ptl:self Vector
execute store result storage ptl:stdin List.Item run scoreboard players get $vector.value stdin
scoreboard players operation $list.count stdin = $vector.count stdin
function ptl:list/extend
data modify storage ptl:self Vector set from storage ptl:self List
