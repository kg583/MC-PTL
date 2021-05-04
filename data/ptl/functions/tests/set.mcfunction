# tests/set
# @stdout $set.passed   The number of tests which passed
# @stdout $set.total    The total number of tests run
scoreboard players set $set.passed stdout 0
scoreboard players set $set.total stdout 0

function ptl:tests/set/add
function ptl:tests/set/and
function ptl:tests/set/diff
function ptl:tests/set/or
function ptl:tests/set/subset

tellraw @s [{"text":"Set tests completed. ","score":{"name":"$set.passed","objective":"stdout"}},{"text":"/","score":{"name":"$set.total","objective":"stdout"}},{"text":" passed."}]
