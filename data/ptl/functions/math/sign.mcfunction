# math/sign
# @stdin  $math.num    The number to get the sign of
# @stdout $math.sign   The sign of <num>
execute if score $math.num stdin matches ..-1 run scoreboard players set $math.sign stdout -1
execute if score $math.num stdin matches 0 run scoreboard players set $math.sign stdout 0
execute if score $math.num stdin matches 1.. run scoreboard players set $math.sign stdout 1
