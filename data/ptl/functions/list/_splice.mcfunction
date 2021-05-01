scoreboard players operation $mod temp = $current var
scoreboard players operation $mod temp %= $list.step stdin
execute if score $current temp >= $list.start stdin if score $current temp <= $list.end stdin if score $mod temp matches 0 run data modify ptl:stdout List.Self append from storage ptl:stdin List.Self[0]
scoreboard players add $current temp 1
data remove storage ptl:stdin List.Self[0]
execute if storage ptl:stdin List.Self[0] run function ptl:list/_splice
