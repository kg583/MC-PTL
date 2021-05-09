# map/find
# @self   Map          The Map to search
# @stdin  Map.Value    The value to find
# @stdout Map.Find     The earliest key whose value in <Self> is <Value>
data modify storage ptl:tmp Map set from storage ptl:self Map
execute if storage ptl:tmp Map[0] run function ptl:map/_find
