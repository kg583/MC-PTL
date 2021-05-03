# vector/neg
# @stdin  Vector.Self    The Vector to negate
# @stdout Vector.Self    <Self> with each coord negated
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_neg
