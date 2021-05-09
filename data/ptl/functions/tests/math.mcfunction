# tests/math
# @stdout $math.passed   The number of tests which passed
# @stdout $math.total    The total number of tests run
scoreboard players set $math.passed stdout 0
scoreboard players set $math.total stdout 0

function ptl:tests/math/combo
function ptl:tests/math/copysign
function ptl:tests/math/det
function ptl:tests/math/fact
function ptl:tests/math/length
function ptl:tests/math/log
function ptl:tests/math/modpow
function ptl:tests/math/perm
function ptl:tests/math/pow
function ptl:tests/math/root
function ptl:tests/math/sign
function ptl:tests/math/sqrt

tellraw @s [{"text":"Math tests completed. ","score":{"name":"$math.passed","objective":"stdout"}},{"text":"/","score":{"name":"$math.total","objective":"stdout"}},{"text":" passed."}]
