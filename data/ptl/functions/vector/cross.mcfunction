# vector/cross
# @self   Vector         The first Vector factor
# @stdin  Vector.Other   The second Vector factor
# @stdout Vector.Cross   The cross product of the <Self> and <Other>
execute store result score $dim_self tmp run data get storage ptl:self Vector
execute store result score $dim_other tmp run data get storage ptl:stdin Vector.Other
execute if score $dim_self tmp matches 3 if score $dim_other matches 3 run function ptl:vector/_cross
