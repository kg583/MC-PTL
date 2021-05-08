# vector/addc
# @self   Vector         The Vector to add to
# @stdin  $vector.value  The value to add
data modify storage ptl:stdin Vector.Other set from storage ptl:self Vector
execute store result storage ptl:stdin Vector.Other[] int 1 run scoreboard players get $vector.value stdin
execute if data storage ptl:self Vector[0] run function ptl:vector/addv
