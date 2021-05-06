# list/insert
# @self   List         The List to insert into
# @stdin  $list.index  The index to insert at
# @stdin  List.Item    The item to insert
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:self List set value []
execute store result $length tmp run data get ptl:tmp List
scoreboard players operation $list.index stdin %= $length tmp
function list/_insert
