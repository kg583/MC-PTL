# tests/list
# @stdout $list.passed   The number of tests which passed
# @stdout $list.total    The total number of tests run
scoreboard players set $list.passed stdout 0
scoreboard players set $list.total stdout 0

function ptl:tests/list/concat
function ptl:tests/list/count
function ptl:tests/list/diffl
function ptl:tests/list/diffr
function ptl:tests/list/extend
function ptl:tests/list/find
function ptl:tests/list/get
function ptl:tests/list/max
function ptl:tests/list/min
function ptl:tests/list/pop
function ptl:tests/list/prod
function ptl:tests/list/quol
function ptl:tests/list/quor
function ptl:tests/list/remove
function ptl:tests/list/rfind
function ptl:tests/list/set
function ptl:tests/list/sorta
function ptl:tests/list/sortd
function ptl:tests/list/splice
function ptl:tests/list/sum

tellraw @s [{"text":"List tests completed. ","score":{"name":"$list.passed","objective":"stdout"}},{"text":"/","score":{"name":"$list.total","objective":"stdout"}},{"text":" passed."}]
