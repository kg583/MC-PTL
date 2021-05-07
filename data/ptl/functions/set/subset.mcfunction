# set/subset
# @self   Set.Self       The base Set
# @stdin  Set.Other      The potential subset
# @stdout $set.subset    Zero if <Other> is not a subset of <Self>, one otherwise
data modify storage ptl:tmp Set set from storage ptl:self Set
scoreboard players set $set.subset stdout 1
data modify storage ptl:tmp Match set from storage ptl:tmp Set
function ptl:set/or
execute store success score $diff tmp run data modify storage ptl:tmp Match set from storage ptl:self Set
data modify storage ptl:self Set set from storage ptl:tmp Set
scoreboard players operation $set.subset stdout -= $diff tmp
