# vector/pow
# @elf    Vector         The Vector to exponentiate
# @stdin  $vector.exp    The exponent to raise to
# @stdin  $vector.mod    The modulus of the power
data modify storage ptl:tmp Vector set from storage ptl:self Vector
data modify storage ptl:self Vector set value [I;]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_modpow
