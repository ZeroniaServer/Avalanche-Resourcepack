function powerups:snowman/spawn
function powerups:snowman/targeting
function powerups:snowman/death
function powerups:snowman/shoot

scoreboard players add @s CmdData 1
execute at @s[tag=Spawned,tag=!Targeting,tag=!Dying,scores={CmdData=225..}] run function powerups:snowman/play_random_idle
scoreboard players set @s[tag=Spawned,tag=!Targeting,tag=!Dying,tag=!Shooting,scores={CmdData=225..},tag=!AirKill] CmdData 50

scoreboard players add @s[tag=CoalBlind] coalblind 1
execute at @s[tag=CoalBlind,tag=!Dying] run particle block_crumble{block_state:coal_block} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 6 force
execute at @s[tag=CoalBlind,tag=!Dying] run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 3 force
tag @s[tag=CoalBlind,scores={coalblind=120..}] remove CoalBlind
scoreboard players reset @s[scores={coalblind=120..}] coalblind

scoreboard players set #kill CmdData 0
execute at @s if block ~ ~-0.5 ~ #game:air run scoreboard players set #kill CmdData 1
execute if entity @s[tag=Green] on passengers if entity @s[type=area_effect_cloud] on origin unless entity @s[team=Green] run scoreboard players set #kill CmdData 1
execute if entity @s[tag=Red] on passengers if entity @s[type=area_effect_cloud] on origin unless entity @s[team=Red] run scoreboard players set #kill CmdData 1
execute if score #kill CmdData matches 1 run tag @s add AirKill
execute if score #kill CmdData matches 1 at @s[tag=!Dying] run function powerups:snowman/kill