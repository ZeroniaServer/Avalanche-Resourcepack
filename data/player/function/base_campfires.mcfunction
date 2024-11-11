execute if score $GreenRespawn CmdData matches 1.. run scoreboard players add $GreenRespawn CmdData 1
execute if score $RedRespawn CmdData matches 1.. run scoreboard players add $RedRespawn CmdData 1

execute if score $GreenRespawn CmdData matches 2..10 positioned -114 45 -210 run playsound particle.soul_escape master @a[distance=..5] ~ ~ ~ 1 1
execute if score $GreenRespawn CmdData matches 2..10 positioned -114 45 -210 run playsound particle.soul_escape master @a[distance=..5] ~ ~ ~ 1 0.6
execute if score $GreenRespawn CmdData matches 2 run setblock -114 45 -210 soul_campfire
execute if score $GreenRespawn CmdData matches 2..10 run particle soul -114 47 -210 0 0.5 0 .05 2 force
execute if score $GreenRespawn CmdData matches 2..10 run particle soul_fire_flame -114 46 -210 0 0.1 0 .05 1 force
execute if score $GreenRespawn CmdData matches 30 run setblock -114 45 -210 campfire

execute if score $RedRespawn CmdData matches 2..10 positioned -12 45 -232 run playsound particle.soul_escape master @a[distance=..5] ~ ~ ~ 1 1
execute if score $RedRespawn CmdData matches 2..10 positioned -12 45 -232 run playsound particle.soul_escape master @a[distance=..5] ~ ~ ~ 1 0.6
execute if score $RedRespawn CmdData matches 2 run setblock -12 45 -232 soul_campfire
execute if score $RedRespawn CmdData matches 2..10 run particle soul -12 47 -232 0 0.5 0 .05 2 force
execute if score $RedRespawn CmdData matches 2..10 run particle soul_fire_flame -12 46 -232 0 0.1 0 .05 1 force
execute if score $RedRespawn CmdData matches 30 run setblock -12 45 -232 campfire

execute if score $GreenRespawn CmdData matches 30.. run scoreboard players reset $GreenRespawn CmdData
execute if score $RedRespawn CmdData matches 30.. run scoreboard players reset $RedRespawn CmdData