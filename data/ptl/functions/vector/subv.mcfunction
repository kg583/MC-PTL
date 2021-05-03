# vector/subv
# @stdin  Vector.Self    The Vector to subtract from
# @stdin  Vector.Other   The Vector to subtract
# @stdout Vector.Self    <Self> with each coord decremented by the corresponding coord in <Other>
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_sub
