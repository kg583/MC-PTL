# list/get
# @stdin  List.Self    The List to retrieve from
# @stdin  $list.index  The index of the requested item
# @stdout List.Item    The item in <Self> at <$index>
execute store result $length tmp run data get ptl:stdin List.Self
scoreboard players operation $list.index stdin %= $length var
execute if data storage ptl:stdin List.Self[0] run function ptl:list_get
