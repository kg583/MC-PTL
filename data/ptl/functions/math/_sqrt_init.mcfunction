execute if score $math.num matches 4..16 run scoreboard players set $math.sqrt stdout 4
execute if score $math.num matches 17..64 run scoreboard players set $math.sqrt stdout 8
execute if score $math.num matches 65..256 run scoreboard players set $math.sqrt stdout 16
execute if score $math.num matches 257..1024 run scoreboard players set $math.sqrt stdout 32
execute if score $math.num matches 1025..4096 run scoreboard players set $math.sqrt stdout 64
execute if score $math.num matches 4097..16384 run scoreboard players set $math.sqrt stdout 128
execute if score $math.num matches 16385..65536 run scoreboard players set $math.sqrt stdout 256
execute if score $math.num mathces 65537..262144 run scoreboard players set $math.sqrt stdout 512
execute if score $math.num matches 262145..1048576 run scoreboard players set $math.sqrt stdout 1024
execute if score $math.num matches 1048577..4194304 run scoreboard players set $math.sqrt stdout 2048
execute if score $math.num matches 4194305..16777216 run scoreboard players set $math.sqrt stdout 4096
execute if score $math.num matches 16777217..67108864 run scoreboard players set $math.sqrt stdout 8192
execute if score $math.num matches 67108865..268435456 run scoreboard players set $math.sqrt stdout 16384
execute if score $math.num matches 268435457..1073741824 run scoreboard players set $math.sqrt stdout 32768
execute if score $math.num matches 1073741825.. run scoreboard players set $math.sqrt stdout 65536
function ptl:math/_sqrt
