# list/max
# @stdin  List.Self    The List to search
# @stdout List.Max     The maximal value in <Self>
scoreboard players set $max tmp -2147483648
execute if data storage ptl:stdin List.Self[0] run function ptl:list/_max
