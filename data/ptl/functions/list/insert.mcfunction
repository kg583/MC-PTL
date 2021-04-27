# list/insert
# @stdin  List.Self    The List to insert into
# @stdin  $list.index  The index to insert at
# @stdin  List.Item    The item to insert
# @stdout List.Self    <Self> with <Item> inserted at <$index>, with no change if <$index> is out of range
data modify storage ptl:stdout List.Self set value []
execute store result $length var run data get ptl:stdin List.Self
scoreboard players operation $list.index stdin %= $length var
function list/inserter
