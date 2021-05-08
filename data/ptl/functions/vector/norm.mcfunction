# vector/norm
# @self   Vector         The Vector to be measured
# @stdout $vector.norm   The squared norm of <Self>
data modify storage ptl:tmp Vector set from storage ptl:self Vector
scoreboard players set $vector.norm stdout 0
execute if data storage ptl:tmp Vector[0] run function ptl:vector/_norm
