# vector/mulc
# @self   Vector         The Vector to multiply
# @stdin  $vector.value  The value to multiply by
data modify storage ptl:stdin Vector.Other set from storage ptl:self Vector
execute store result storage ptl:stdin Vector.Other[] int 1 run scoreboard players get $vector.value stdin
execute if data storage ptl:self Vector[0] run function ptl:vector/mulv
