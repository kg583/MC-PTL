scoreboard players operation $mod var = $current var
scoreboard players operation $mod var %= $list.step stdin
execute if score $current var <= $list.start stdin if score $current var >= $list.end stdin if score $mod var matches 0 run data modify ptl:stdout List.Self append from storage ptl:stdin List.Self[-1]
scoreboard players remove $current var 1
data remove storage ptl:stdin List.Self[-1]
execute if storage ptl:stdin List.Self[-1] run function ptl:list/_rsplice
