execute if score $WeakpointSpawnGreen CmdData matches ..10 run scoreboard players add $WeakpointSpawnGreen CmdData 1
execute if score $WeakpointSpawnRed CmdData matches ..10 run scoreboard players add $WeakpointSpawnRed CmdData 1

#> Red
# Left
execute if score $RedWeakpoint CmdData matches 0 run particle block{block_state:snow_block} -5 66 -226 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 0 run particle snowflake -5 66 -226 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 1 run setblock -5 66 -226 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -4 67 -227 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -4 67 -225 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -5 65 -227 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -5 65 -225 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -5 64 -228 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -4 68 -228 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -3 68 -224 granite
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -5 64 -224 granite
# Middle
execute if score $RedWeakpoint CmdData matches 1 run particle block{block_state:snow_block} -16 55 -217 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 1 run particle snowflake -16 55 -217 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 1 run setblock -16 55 -217 granite
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -16 54 -216 granite
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -16 54 -218 granite
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -15 56 -216 granite
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -14 56 -218 granite
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 3 run setblock -16 53 -219 granite
# Right
execute if score $RedWeakpoint CmdData matches 2 run particle block{block_state:snow_block} -10 69 -206 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 2 run particle snowflake -10 69 -206 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 1 run setblock -10 69 -206 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -9 70 -205 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -10 70 -207 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -11 68 -207 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -10 68 -205 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -11 67 -208 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -8 71 -204 granite
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -9 71 -208 granite


#> Green
# Left
execute if score $GreenWeakpoint CmdData matches 0 run particle block{block_state:snow_block} -121 66 -216 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 0 run particle snowflake -121 66 -216 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -121 66 -216 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -122 67 -215 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -122 67 -217 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -121 65 -215 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -121 65 -217 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -122 68 -214 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -123 68 -218 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -121 64 -214 granite
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -121 64 -218 granite
# Middle
execute if score $GreenWeakpoint CmdData matches 1 run particle block{block_state:snow_block} -110 55 -225 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 1 run particle snowflake -110 55 -225 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -110 55 -225 granite
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -110 54 -224 granite
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -110 54 -226 granite
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -111 56 -226 granite
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -112 56 -224 granite
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -110 53 -223 granite
# Right
execute if score $GreenWeakpoint CmdData matches 2 run particle block{block_state:snow_block} -116 69 -236 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 2 run particle snowflake -116 69 -236 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -116 69 -236 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -116 70 -235 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -117 70 -237 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -116 68 -237 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -115 68 -235 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -118 71 -238 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -117 71 -234 granite
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -115 67 -234 granite