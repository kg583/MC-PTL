# map/pop
# @stdin  Map.Self    The Map to pop from
# @stdin  Map.Key     The key to pop
# @stdout Map.Value   The value in <Self> at <Key>
# @stdout Map.Self    <Self> with <Key> removed
data modify storage ptl:stdout Map.Self set value []
execute if data storage ptl:stdin Map.Self[0] run function map/_pop
