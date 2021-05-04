# set/subset
# @stdin  Set.Self       The base Set
# @stdin  Set.Other      The potential subset
# @stdout $set.subset    Zero if <Other> is not a subset of <Self>, one otherwise
scoreboard players set $set.subset stdout 1
data modify storage ptl:tmp Match set from storage ptl:stdin Set.Self
function ptl:set/or
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:stdout Set.Or
scoreboard players operation $set.subset stdout -= $diff tmp
