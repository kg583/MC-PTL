# map/pop
# @self   Map         The Map to pop from
# @stdin  Map.Key     The key to pop
# @stdout Map.Pop     The value in <Self> at <Key>
data modify storage ptl:tmp Map set from storage ptl:self Map
data modify storage ptl:self Map set value []
execute if data storage ptl:tmp Map[0] run function map/_pop
