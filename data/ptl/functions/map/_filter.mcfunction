data modify storage ptl:temp Match set from storage ptl:stdin Map.Value
execute store success score $diff temp run data modify storage ptl:temp Match set from storage ptl:stdin Map.Self[0].Value
execute if score $diff temp matches 0 run data modify storage ptl:stdout Filtered append from storage ptl:stdin Map.Self[0]
execute unless score $diff temp matches 0 run data modify storage ptl:stdout Rest append from storage ptl:stdin Map.Self[0]
data remove storage ptl:stdin Map.Self[0]
execute unless score $diff temp matches 0 if data storage ptl:stdin Map.Self[0] run function ptl:map/_filter
