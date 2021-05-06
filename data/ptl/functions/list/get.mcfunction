# list/get
# @self   List         The List to retrieve from
# @stdin  $list.index  The index of the requested item
# @stdout List.Get     The item in <Self> at <$index>
data modify storage ptl:tmp List set from storage ptl:self List
execute store result $length tmp run data get ptl:tmp List
scoreboard players operation $list.index stdin %= $length tmp
execute if data storage ptl:tmp List[0] run function ptl:list/_get
