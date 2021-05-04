# math.combo
# @stdin  $math.n      The number of objects
# @stdin  $math.r      The number to choose
# @stdout $math.combos The number of ways to choose <$r> objects from <$n> total disregarding order
scoreboard players operation $math.num stdin = $math.r stdin
function ptl:math/fact
function ptl:math/perm
scoreboard players operation $math.combos stdout = $math.perms stdout
scoreboard players operation $math.combos stdout /= $math.fact stdout