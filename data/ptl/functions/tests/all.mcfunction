# tests/all
# @stdout $tests.passed   The number of tests which passed
# @stdout $tests.total    The total number of tests run
scoreboard players set $tests.passed stdout 0
scoreboard players set $tests.total stdout 0

function ptl:tests/list
scoreboard players operation $tests.passed stdout += $list.passed stdout
scoreboard players operation $tests.total stdout += $list.total stdout

function ptl:tests/map
scoreboard players operation $tests.passed stdout += $map.passed stdout
scoreboard players operation $tests.total stdout += $map.total stdout

function ptl:tests/math
scoreboard players operation $tests.passed stdout += $math.passed stdout
scoreboard players operation $tests.total stdout += $math.total stdout

function ptl:tests/set
scoreboard players operation $tests.passed stdout += $set.passed stdout
scoreboard players operation $tests.total stdout += $set.total stdout

function ptl:tests/vector
scoreboard players operation $tests.passed stdout += $vector.passed stdout
scoreboard players operation $tests.total stdout += $vector.total stdout

tellraw @s [{"text":"All tests completed. ","score":{"name":"$tests.passed","objective":"stdout"}},{"text":"/","score":{"name":"$tests.total","objective":"stdout"}},{"text":" passed."}]
