# list/pop
# @stdin  List.Self    The List to retrieve from
# @stdin  $list.index  The index of the requested item
# @stdout List.Pop     The item in <Self> at <$index>
# @stdout List.Self    <Self> with the item at <$index> deleted
data modify storage ptl:stdout List.Self set value []
execute store result $length tmp run data get ptl:stdin List.Self
scoreboard players operation $list.index stdin %= $length tmp
execute if data storage ptl:stdin List.Self[0] run function list/_pop
