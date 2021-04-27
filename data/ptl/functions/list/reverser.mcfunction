data modify storage ptl:stdout List.Self prepend from storage ptl:stdin List.Self[0]
data remove storage ptl:stdin List.Self[0]
execute if data storage ptl:stdin List.Self[0] run function ptl:list/reverser
