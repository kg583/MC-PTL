# Vars
scoreboard objectives add const dummy
scoreboard objectives add tmp dummy
scoreboard objectives add var dummy

scoreboard objectives add stdin dummy
scoreboard objectives add stdout dummy

# Consts
scoreboard players set $-1 const -1
scoreboard players set $0 const 0
scoreboard players set $1 const 1
scoreboard players set $TICK const 20

# Finish
tellraw @a {"text":"MC-PTL v0.4 has been loaded."}
