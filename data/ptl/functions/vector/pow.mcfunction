# vector/pow
# @stdin  Vector.Self    The Vector to exponentiate
# @stdin  $vector.exp    The exponent to raise to
# @stdout Vector.Self    <Self> with each coord raised to the <$exp>th power
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_pow
