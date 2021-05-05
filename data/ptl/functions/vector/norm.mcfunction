# vector/norm
# @stdin  Vector.Self    The Vector to be measured
# @stdout $vector.norm   The squared norm of <Self>
data modify storage ptl:stdout Vector.Self set from storage ptl:stdin Vector.Self
scoreboard players set $vector.norm stdout 0
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_norm
