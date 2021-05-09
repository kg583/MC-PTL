data modify storage ptl:stdout Vector.Cross set value [I;0,0,0]

execute store result score $math.a stdin run data get storage ptl:self Vector[1]
execute store result score $math.b stdin run data get storage ptl:self Vector[2]
execute store result score $math.c stdin run data get storage ptl:stdin Vector.Other[1]
execute store result score $math.d stdin run data get storage ptl:stdin Vector.Other[2]
function ptl:math/det
execute store result storage ptl:stdout Vector.Cross[0] int 1 run scoreboard players get $math.det stdout

execute store result score $math.a stdin run data get storage ptl:self Vector[0]
execute store result score $math.b stdin run data get storage ptl:self Vector[2]
execute store result score $math.c stdin run data get storage ptl:stdin Vector.Other[0]
execute store result score $math.d stdin run data get storage ptl:stdin Vector.Other[2]
function ptl:math/det
execute store result storage ptl:stdout Vector.Cross[1] int -1 run scoreboard players get $math.det stdout

execute store result score $math.a stdin run data get storage ptl:self Vector[0]
execute store result score $math.b stdin run data get storage ptl:self Vector[1]
execute store result score $math.c stdin run data get storage ptl:stdin Vector.Other[0]
execute store result score $math.d stdin run data get storage ptl:stdin Vector.Other[1]
function ptl:math/det
execute store result storage ptl:stdout Vector.Cross[2] int 1 run scoreboard players get $math.det stdout
