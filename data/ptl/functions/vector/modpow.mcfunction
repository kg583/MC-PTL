# vector/pow
# @stdin  Vector.Self    The Vector to exponentiate
# @stdin  $vector.exp    The exponent to raise to
# @stdin  $vector.mod    The modulus of the power
# @stdout Vector.Self    <Self> with each coord raised to the <$exp>th power modulo <$mod>
data modify storage ptl:stdout Vector.Self set value [I;]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_modpow
