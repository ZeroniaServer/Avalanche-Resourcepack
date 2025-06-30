playsound campfirelight master @a ~ ~ ~ 0.6 0.6
particle flame ~ ~0.2 ~ 0.2 0.1 0.2 0.1 3 force
scoreboard players remove @s CmdData 440
execute if score @s CmdData matches ..21 run scoreboard players set @s CmdData 22