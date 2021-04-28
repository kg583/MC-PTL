# list/remove
# @stdin  List.Self    The List to remove from
# @stdin  List.Item    The item to remove
# @stdout $list.index  The first index of <Item> in <Self>
# @stdout List.Self    <Self> with the first instance of <Item> removed
scoreboard players set $list.index stdout -1
data modify storage ptl:stdout List.Self set value []
execute if data storage ptl:stdin List.Self[0] run function list/remover
