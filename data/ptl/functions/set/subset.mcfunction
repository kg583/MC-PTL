# set/subset
# @stdin  Set.Self       The base Set
# @stdin  Set.Other      The potential subset
# @stdout $set.is_subset Zero if <Other> is not a subset of <Self>, one otherwise
scoreboard players set $set.is_subset stdout 1
data modify storage ptl:temp Match set from storage ptl:stdin Set.Self
function ptl:set/or
execute store success score $diff temp run data modify storage ptl:temp Match set from storage ptl:stdout Set.Or
scoreboard players operation $set.is_subset stdout -= $diff var
