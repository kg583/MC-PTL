execute store result storage ptl:tmp Result int 1 data get storage ptl:stdin Vector.List[0]
data modify storage ptl:self Vector append from storage ptl:tmp Result
data remove storage ptl:stdin Vector.List[0]
execute if storage ptl:stdin Vector.List[0] run function ptl:vector/_build
