# map/build
# @stdin  Map.Keys    The List of keys
# @stdin  Map.Values  The List of values
# @stdout Map.Self    The map made by matching each key in <Keys> to the corresponding value in <Values>
data modify storage ptl:stdout Map.Self set value []
execute if data storage ptl:stdin Map.Keys[0] run function ptl:map/builder
