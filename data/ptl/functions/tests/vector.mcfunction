# tests/vector
# @stdout $vector.passed   The number of tests which passed
# @stdout $vector.total    The total number of tests run
scoreboard players set $vector.passed stdout 0
scoreboard players set $vector.total stdout 0

function ptl:tests/vector/addc
function ptl:tests/vector/addv
function ptl:tests/vector/divc
function ptl:tests/vector/divv
function ptl:tests/vector/dot
function ptl:tests/vector/extend
function ptl:tests/vector/get
function ptl:tests/vector/modpow
function ptl:tests/vector/mulc
function ptl:tests/vector/mulv
function ptl:tests/vector/neg
function ptl:tests/vector/norm
function ptl:tests/vector/pow
function ptl:tests/vector/set
function ptl:tests/vector/square
function ptl:tests/vector/subc
function ptl:tests/vector/subv

tellraw @s [{"text":"Vector tests completed. ","score":{"name":"$vector.passed","objective":"stdout"}},{"text":"/","score":{"name":"$vector.total","objective":"stdout"}},{"text":" passed."}]
