# vector/dot
# @self   Vector         The first Vector factor
# @stdin  Vector.Other   The second Vector factor
# @stdout $vector.dot    The dot product of the <Self> and <Other>; namely, the sum of the coordinate-wise products of <Self> and <Other>
data modify storage ptl:tmp Vector set from storage ptl:self Vector
scoreboard players set $vector.dot stdout 0
execute if data storage ptl:tmp Vector[0] if data storage ptl:stdin Vector.Other[0] run function ptl:vector/_dot
