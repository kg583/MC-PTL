# list/concat
# @stdin  List.Self    The List to concatenate onto
# @stdin  List.Other   The List to concatenate
# @stdout List.Self    <Self> with <Other> appended in-order
data modify storage ptl:stdin List.Self append from storage ptl:stdin List.Other[0]
data remove storage ptl:stdin List.Other[0]
data modify storage ptl:stdout List.Self set from storage ptl:stdin List.Self
execute if data storage ptl:stdin List.Other[0] function ptl:list/concat
