# vector/divv
# @stdin  Vector.Self    The Vector to divide
# @stdin  Vector.Other   The Vector to divide by
# @stdout Vector.Self    <Self> with each coord divided by the corresponding coord in <Other>, rounded down
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_div
