# math.combo
# @stdin  $math.n      The number of objects
# @stdin  $math.r      The number to choose
# @stdout $math.perms  The number of ways to choose <$r> objects from <$n> total
scoreboard players set $math.perm stdout 0
execute if score $math.r stdin matches 0.. if score $math.r <= $math.n run scoreboard players set $math.perms stdout 1
execute if score $math.r stdin matches 1.. if score $math.r <= $math.n run function ptl:math/_perm
