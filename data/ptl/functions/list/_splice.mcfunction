scoreboard players operation $mod tmp = $current tmp
scoreboard players operation $mod tmp %= $list.step stdin
execute if score $current tmp >= $list.start stdin if score $current tmp <= $list.end stdin if score $mod tmp matches 0 run data modify ptl:stdout List.Splice append from storage ptl:stdin List.Self[0]
scoreboard players add $current tmp 1
data remove storage ptl:stdin List.Self[0]
execute if storage ptl:stdin List.Self[0] run function ptl:list/_splice
