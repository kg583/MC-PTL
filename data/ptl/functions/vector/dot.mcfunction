# vector/dot
# @stdin  Vector.Self    The first Vector factor
# @stdin  Vector.Other   The second Vector factor
# @stdout $vector.dot    The dot product of the <Self> and <Other>; namely, the sum of the coordinate-wise products of <Self> and <Other>
data modify storage ptl:stdout Vector.Self set from storage ptl:stdin Vector.Self
scoreboard players set $vector.dot stdout 0
execute if data storage ptl:stdin Vector.Self[0] if data storage ptl:stdin Vector.Other[0] run function ptl:vector/_dot
