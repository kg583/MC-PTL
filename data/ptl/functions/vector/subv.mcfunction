# vector/subv
# @self   Vector         The Vector to subtract from
# @stdin  Vector.Other   The Vector to subtract
data modify storage ptl:tmp Vector set from storage ptl:self Vector
data modify storage ptl:self Vector set value [I;]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_sub
