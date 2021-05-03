execute store result score $current temp run data get storage ptl:stdin Vector.Self[0]
scoreboard players set $negated temp 0
scoreboard players operation $negated temp -= $current var
execute store result storage ptl:temp Result run scoreboard players get $negated var
data modify storage ptl:stdout Vector.Self append from storage ptl:temp Result
data remove storage ptl:stdin Vector.Self[0]
execute if data storage ptl:stdin Vector.Self[0] run function ptl:vector/_neg
