# tests/map
# @stdout $map.passed   The number of tests which passed
# @stdout $map.total    The total number of tests run
scoreboard players set $map.passed stdout 0
scoreboard players set $map.total stdout 0

function ptl:tests/map/build
function ptl:tests/map/filter
function ptl:tests/map/find
function ptl:tests/map/get
function ptl:tests/map/merge
function ptl:tests/map/pop
function ptl:tests/map/set
function ptl:tests/map/update

tellraw @s [{"text":"Map tests completed. ","score":{"name":"$map.passed","objective":"stdout"}},{"text":"/","score":{"name":"$map.total","objective":"stdout"}},{"text":" passed."}]
