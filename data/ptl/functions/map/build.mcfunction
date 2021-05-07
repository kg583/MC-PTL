# map/build
# @self   Map         The Map to construct
# @stdin  Map.Keys    The List of keys
# @stdin  Map.Values  The List of values
data modify storage ptl:self Map set value []
execute if data storage ptl:stdin Map.Keys[0] run function ptl:map/_build
