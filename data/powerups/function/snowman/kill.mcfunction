scoreboard players set @s playerHP 0
function animated_java:snowman/animations/spawn/stop
execute at @s[tag=!Dying] run playsound snowmandie1 master @a ~ ~ ~ 1 1
execute at @s[tag=!Dying] run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.2 0.5 0.2 0.1 40 force
tag @s[tag=!Spawned,scores={CmdData=..24}] add Dying
execute unless entity @s[tag=!Spawned,scores={CmdData=25..},tag=!AirKill] run scoreboard players set @s CmdData 220
tag @s[tag=AirKill] add Dying
tag @s add Spawned