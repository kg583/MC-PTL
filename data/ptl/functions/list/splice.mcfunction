# list/slice
# @self   List         The List to slice
# @stdin  $list.start  The first index of the slice (inclusive)
# @stdin  $list.end    The last index of the slice (inclusive)
# @stdin  $list.step   The difference between slice indices
# @stdout List.Slice  The slice of <Self> from <$start> to <$end> incremented by <$step>
data modify storage ptl:tmp List set from storage ptl:self List
data modify storage ptl:stdout List.Slice set value []
scoreboard players set $current tmp 0
execute if data storage ptl:tmp List[0] if score $list.step stdin matches 1.. run function ptl:list/_slice
execute store result $current tmp run data get ptl:stdin List.Self
scoreboard players remove $current tmp 1
execute if data storage ptl:tmp List[0] unless score $list.step stdin matches 0.. run function ptl:list/_rslice
