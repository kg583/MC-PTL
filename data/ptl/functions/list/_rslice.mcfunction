scoreboard players operation $mod tmp = $current tmp
scoreboard players operation $mod tmp %= $list.step stdin
execute if score $current tmp <= $list.start stdin if score $current tmp >= $list.end stdin if score $mod tmp matches 0 run data modify ptl:stdout List.Slice append from storage ptl:tmp List[-1]
scoreboard players remove $current tmp 1
data remove storage ptl:tmp List[-1]
execute if storage ptl:tmp List[-1] run function ptl:list/_rslice
