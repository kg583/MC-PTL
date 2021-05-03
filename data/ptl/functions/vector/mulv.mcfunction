# vector/mulv
# @stdin  Vector.Self    The Vector to multiply
# @stdin  Vector.Other   The Vector to multiply by
# @stdout Vector.Self    <Self> with each coord multiplied by the corresponding coord in <Other>
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_mul
