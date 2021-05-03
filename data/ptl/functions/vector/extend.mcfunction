# vector/extend
# @stdin  Vector.Self    The Vector to extend
# @stdin  $vector.value  The value to extend with
# @stdin  $vector.count  The amount to extend by
# @stdout Vector.Self    <Self> extended with <$count> copies of <$value>
data modify storage ptl:stdin List.Self set from storage ptl:stdin Vector.Self
execute store result storage ptl:stdin List.Item run scoreboard players get $vector.value stdin
scoreboard players operation $list.count stdin = $vector.count stdin
function ptl:list/extend
data modify storage ptl:stdout Vector.Self set from storage ptl:stdout List.Self
