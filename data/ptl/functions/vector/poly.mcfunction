# vector/poly
# @self   Vector         The Vector to use as coefficients
# @stdin  $vector.x      The point at which to evaluate the polynomial
# @stdout $vector.poly   The evaluation of <Self> at <$x> as a polynomial
data modify storage ptl:tmp Vector set from storage ptl:self Vector
scoreboard players set $exp tmp 1
scoreboard players operation $math.base stdin = $vector.x stdin
execute store result score $vector.poly stdout run data get storage ptl:tmp Vector[0]
data remove storage ptl:tmp Vector[0]
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_poly
