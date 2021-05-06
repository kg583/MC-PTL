data modify storage ptl:self List prepend from storage ptl:tmp List
data remove storage ptl:tmp List[0]
execute if data storage ptl:tmp Listf[0] run function ptl:list/_reverse
