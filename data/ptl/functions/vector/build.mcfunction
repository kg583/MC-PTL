# vector/build
# @self   Vector       The Vector to construct
# @stdin  Vector.List  The List of values
data modify storage ptl:self Vector set value [I;]
execute if storage ptl:stdin Vector.List[0] run function ptl:vector/_build
