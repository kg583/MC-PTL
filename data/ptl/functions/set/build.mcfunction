# set/build
# @self   Set       The Set to construct
# @stdin  Set.List  The List of values
data modify storage ptl:self Set set value []
execute if storage ptl:stdin Set.List[0] run function ptl:set/_build
