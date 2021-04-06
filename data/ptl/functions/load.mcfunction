# Vars
scoreboard objectives add const dummy
scoreboard objectives add var dummy

scoreboard objectives add stdin dummy
scoreboard objectives add stdout dummy

# Consts
scoreboard players set $NEG const -1
scoreboard players set $ZERO const 0
scoreboard players set $ONE const 1
scoreboard players set $TICK const 20

# Finish
tellraw @a {"text":"MC-PTL has been loaded."}