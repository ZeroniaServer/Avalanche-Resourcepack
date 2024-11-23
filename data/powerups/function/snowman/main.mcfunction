function powerups:snowman/spawn
function powerups:snowman/targeting
function powerups:snowman/death
function powerups:snowman/shoot

scoreboard players add @e[type=item_display,tag=aj.snowman.root] CmdData 1
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,scores={CmdData=225..}] at @s run function powerups:snowman/play_random_idle
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!Shooting,scores={CmdData=225..}] at @s run scoreboard players set @s CmdData 50

scoreboard players add @e[type=snowball,tag=SnowmanSnowball] CmdData 1
execute as @e[type=snowball,tag=SnowmanSnowball,scores={CmdData=10}] run data merge entity @s {NoGravity:0b}

scoreboard players add @e[type=item_display,tag=Snowman,tag=CoalBlind] coalblind 1
execute as @e[type=item_display,tag=Snowman,tag=CoalBlind,tag=!Dying] at @s run particle block_crumble{block_state:coal_block} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 6 force
execute as @e[type=item_display,tag=Snowman,tag=CoalBlind,tag=!Dying] at @s run particle dust{color:[0.000,0.000,0.100],scale:1} ~ ~1.6 ~ 0.2 0.1 0.2 0.1 3 force
tag @e[type=item_display,tag=Snowman,tag=CoalBlind,scores={coalblind=120..}] remove CoalBlind
scoreboard players reset @e[type=item_display,tag=Snowman,scores={coalblind=120..}] coalblind

execute as @e[type=item_display,tag=Snowman] at @s if block ~ ~-0.5 ~ air run scoreboard players set @s playerHP 0
execute as @e[type=item_display,tag=Snowman] at @s if block ~ ~-0.5 ~ air run scoreboard players set @s CmdData 220
execute as @e[type=item_display,tag=Snowman] at @s if block ~ ~-0.5 ~ air run particle block_crumble{block_state:snow_block} ~ ~1 ~ 0.2 0.5 0.2 0.1 40 force