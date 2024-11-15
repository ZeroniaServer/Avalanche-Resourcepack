function powerups:snowman/spawn
function powerups:snowman/targeting
function powerups:snowman/death
function powerups:snowman/shoot

scoreboard players add @e[type=item_display,tag=aj.snowman.root] CmdData 1
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,scores={CmdData=225..}] at @s run function powerups:snowman/play_random_idle
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!Shooting,scores={CmdData=225..}] at @s run scoreboard players set @s CmdData 50

scoreboard players add @e[type=snowball,tag=SnowmanSnowball] CmdData 1
execute as @e[type=snowball,tag=SnowmanSnowball,scores={CmdData=10}] run data merge entity @s {NoGravity:0b}