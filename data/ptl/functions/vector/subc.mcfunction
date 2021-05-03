# vector/subc
# @stdin  Vector.Self    The Vector to subtract from
# @stdin  $vector.value  The value to subtract
# @stdout Vector.Self    <Self> with each coord decremented by <$value>
data modify storage ptl:stdout Vector.Self set value [I;]
data modify storage ptl:stdin Vector.Other set from storage ptl:stdin Vector.Self
execute store result storage ptl:stdin Vector.Other[] int 1 run scoreboard players get $vector.value stdin
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_sub
