# list/splice
# @self   List         The List to splice
# @stdin  $list.start  The first index of the splice (inclusive)
# @stdin  $list.end    The last index of the splice (inclusive)
# @stdin  $list.step   The difference between splice indices
# @stdout List.Splice The splice of <Self> from <$start> to <$end> incremented by <$step>
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:stdout List.Splice set value []
scoreboard players set $current tmp 0
execute if data storage ptl:tmp List[0] if score $list.step stdin matches 1.. run function ptl:list/_splice
execute store result $current tmp run data get ptl:stdin List.Self
scoreboard players remove $current tmp 1
execute if data storage ptl:tmp List[0] unless score $list.step stdin matches 0.. run function ptl:list/_rsplice
