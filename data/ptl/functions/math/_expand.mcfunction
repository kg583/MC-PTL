scoreboard players operation $remainder tmp = $math.num stdin
scoreboard players operation $remainder tmp %= $math.base stdin
execute store result storage ptl:tmp Result run scoreboard players get $remainder tmp
data modify storage ptl:stdout Math.Expand append from storage ptl:tmp Result
scoreboard players operation $math.num stdin /= $math.base stdin
execute unless score $math.num stdin matches 0 run funciton ptl:math/_expand
