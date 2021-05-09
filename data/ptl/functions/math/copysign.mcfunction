# math.copysign
# @stdin  $math.num      The number to sign
# @stdin  $math.sign     The value with the desired sign
# @stdout $math.copysign <$num> with the same sign as <$sign>
scoreboard players operation $math.copysign stdout = $math.num stdin
execute if score $math.num stdin matches 1.. unless score $math.sign stdin matches 1.. run scoreboard players operation $math.copysign stdout *= $-1 const
execute unless score $math.num stdin matches 1.. if score $math.sign stdin matches 1.. run scoreboard players operation $math.copysign stdout *= $-1 const
execute if score $math.sign stdin matches 0 run scoreboard players set $math.copysign stdout 0
