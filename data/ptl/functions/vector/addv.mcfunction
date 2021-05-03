# vector/addv
# @stdin  Vector.Self    The Vector to add to
# @stdin  Vector.Other   The Vector to add
# @stdout Vector.Self    <Self> with each coord incremented by the corresponding coord in <Other>
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_add
