# map/get
# @stdin  Map.Self     The Map to search
# @stdin  Map.Key      The key to acquire
# @stdout Map.Value    The value corresponding to <Key> in <Self>
execute if data storage ptl:stdin Map.Self[0] run function ptl:map/getter
